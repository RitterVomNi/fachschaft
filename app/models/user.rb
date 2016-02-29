class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  rolify

  validates :email,
            format: {with: /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@fh\-muenster\.de)\z/, message: "muss mit @fh-muenster.de enden."},
            uniqueness: {case_sensitive: false, message: "Email ist bereits vergeben."}
  validates :facebook,
            format: {with: /(\A\z|\A(?:(?:http|https):\/\/)?(?:www.)?facebook.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[?\w\-]*\/)?(?:profile.php\?id=(?=\d.*))?([\w\-]*)?)/, message: "Facebook-Link nicht gültig."}
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :studiengang, presence: true

  after_initialize :set_default_role, :if => :new_record?
  # after_create :send_welcome_mail
  has_many :contents
  has_one :team

  def send_welcome_mail
    UserMailer.welcome_email(self).deliver
  end

  #sets the Role of the user. Works only if roleName is part of Role.POSSIBLE_ROLES
  def set_role(role_name)
    #Is the role part of possible roles
    if Role.possible_roles.include? role_name
      #Remove roles
      self.roles = []
      #Add role
      self.add_role role_name
      return true
    else

      false
    end
  end

  def fullname
    "#{self.firstName} #{self.lastName}"
  end

  #Checks if the current user is an admin
  #returns a boolean
  def is_admin
    self.has_role? Role.admin
  end

  #checks if current user is a manager
  def is_manager
    self.has_role? Role.manager
  end

  #checks if current user is fachschaft
  def is_fs
    self.has_role? Role.fachschaft
  end


  #Returns the name of the current role
  def current_role
    self.roles[0].to_string
  end

  private

  ##
  #First User in the Database is an admin, rest defaults to user
  #
  def set_default_role
    if User.count == 0
      self.set_role("Admin")
    else
      self.set_role("User")
    end
  end
end
