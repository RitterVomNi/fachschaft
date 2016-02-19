class UsersSessionController < ApplicationController

#def new

    #@user=user.new
#end


  def create
    @user = User.find_by(email: params[:session][:email].downcase)
      if @user && @user.authenticate(params[:sessions][:password])
    log_in @user
        redirect_to index_path
    else
      flash.now[:alert]
        #render 'new'
    end
  end

def current_user
  User.find_by(id: session[:user_id])
end
  def destroy
    log_out
    redirect_to(:user, message: "logout")
  end

end