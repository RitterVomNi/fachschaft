class UsersController < ApplicationController
  before_action :checkAdmin
  before_action :set_User, only: [ :edit, :update, :destroy]
def index
  @users = User.all
end
  def edit

  end
  def destroy
@user.destroy
  end
  private
  def checkAdmin
 current_user.present? && current_user.isAdmin



  end
  def set_User
   @user = User.find(params[:id])
  end

end