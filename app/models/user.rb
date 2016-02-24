class User < ActiveRecord::Base
  rolify

  mount_uploader :picture, PictureUploader
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


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

  #Checks if the current user is an admin
  #returns a boolean
  def is_admin
    self.has_role? Role.admin
  end
  #Returns the name of the current role
  def current_role
    self.roles[0].to_string
  end

  #default profile picture
  has_attached_file :avatar, :styles => { :medium => "400x400>", :thumb => "400x400#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  #######################



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
