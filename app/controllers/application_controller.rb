class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @users = User.all
  end
  def about
    @users = User.all
    @teams = Team.all
  end

  def admin
    if params[:search]
      @users = User.search(params[:search]).order("firstName ASC")
    else
      @users = User.all.order("firstName ASC")
    end
    @teams = Team.all
  end

  def change_role
    @user = User.find(params[:id])
    @role = params[:name]
  end

  def change_team
    @user = User.find(params[:id])
    if params[:tname] == nil
      @team_id = nil
    else
      @team_id = Team.find_by(teamName: params[:tname] ).id
    end
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:studiengang, :email, :firstName, :lastName, :facebook, :img]
    devise_parameter_sanitizer.for(:account_update) << [:password, :password_confirmation, :studiengang, :email, :firstName, :lastName, :facebook]
  end


end
