class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  rolify

  after_initialize :set_default_role, :if => :new_record?

  has_many :contents
  has_many :users_teams
  has_many :teams, through: :users_teams

#sets the Role of the user. Works only if roleName is part of Role.POSSIBLE_ROLES
  def setRole(roleName)
    #Is the role part of possible roles
    if Role.POSSIBLE_ROLES.include? roleName
      #Remove roles
      self.roles = []
      #Add role
      self.add_role roleName
      return true
    else

      false
    end
  end
#Checks if the current user is an admin
#returns a boolean
  def is_admin
    self.has_role? Role.Admin
  end
#Returns the name of the current role
  def current_role
    self.roles[0].toString
  end

  private
##
#First User in the Database is an admin, rest defaults to user
#
  def set_default_role
    if User.count == 0
      setRole Role.Admin
    else
      setRole Role.User
    end
  end

end
