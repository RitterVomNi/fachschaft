class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email,
            format: { with: /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@fh\-muenster\.de)\z/, message: "muss mit @fh-muenster.de enden." },
            uniqueness: { case_sensitive: false, message: "ist bereits vergeben." }
  validates :facebook,
            format: { with: /(?:(?:http|https):\/\/)?(?:www.)?facebook.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[?\w\-]*\/)?(?:profile.php\?id=(?=\d.*))?([\w\-]*)?/, message: "Link nicht gültig." }
  validates :firstName, presence: true
  validates :lastName, presence: true

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
  #Returns the name of the current role
  def current_role
    self.roles[0].to_string
  end

  def self.search(search)
    where("firstName LIKE ? OR lastName LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" )
  end

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
