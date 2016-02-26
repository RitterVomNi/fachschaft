class User < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  rolify

  validates :email,
            format: { with: /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@fh\-muenster\.de)\z/, message: "muss mit @fh-muenster.de enden." },
            uniqueness: { case_sensitive: false, message: "Email ist bereits vergeben." }
  validates :facebook,
            format: { with: /(?:(?:http|https):\/\/)?(?:www.)?facebook.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[?\w\-]*\/)?(?:profile.php\?id=(?=\d.*))?([\w\-]*)?/, message: "Facebook-Link nicht gültig." }
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :studiengang, presence: true


  #attr_accessible :picture, :picure_cache, :remove_picure
  after_initialize :set_default_role, :if => :new_record?
  has_many :contents
  has_one :team

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

  def is_valid

    false
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
    self.has_role? Role.fs
  end



  #Returns the name of the current role
  def current_role
    self.roles[0].to_string
  end

  #default profile picture
  #has_attached_file :avatar, :styles => { :medium => "400x400>", :thumb => "400x400#" }, :default_url => "/images/:style/missing.png"
 #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  #######################
  private

  ##
  #First User in the Database is an admin, rest defaults to user
  #
  def set_default_role
    if User.count == 0
      set_role Role.admin
    else
      set_role Role.user
    end
  end
end
