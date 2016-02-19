class User < ActiveRecord::Base
  before_save{self.email=email.downcase}


  enum role: [:user, :fs,:manager,:admin]
  after_initialize :set_default_role, :if => :new_record?
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def isAdmin
   self.admin?
  end
  private
  def set_default_role
    if User.count == 0
      self.role ||= :admin
    else
self.role ||= :user
      end
  end
end
