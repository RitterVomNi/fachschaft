class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @users = User.all
    @contents = Content.all
  end

  def about
    @users = User.all
    @teams = Team.all
    @appointments = Appointment.all
  end
  def late
    if User.find_by(team_id: "7") != nil
    @user = User.find_by(team_id: "7")
    else
      @user = User.find(1)
    end
    @appointments = Appointment.all
  end

  def admin
    if params[:search]
      @users = User.search(params[:search]).order("firstName ASC")
    else
      @users = User.all.order("firstName ASC")
    end
    @teams = Team.all
  end

  def authenticate_manager!
    if current_user.present? && (current_user.is_admin || current_user.is_manager)
      true
    else
      flash[:alert] = "Du musst Administrator sein, um diese Seite auf zu rufen!"
      redirect_to new_user_session_path
    end
  end

  def authenticate_admin!
    if current_user.present? && current_user.is_admin
      true
    else
      flash[:alert] = "Du musst Administrator sein, um diese Seite auf zu rufen!"
      redirect_to new_user_session_path
    end
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:studiengang, :email, :firstName, :lastName, :facebook, :avatar, :avatar_cache]
    devise_parameter_sanitizer.for(:account_update) << [:password, :password_confirmation, :studiengang, :email, :firstName, :lastName, :facebook, :avatar, :avatar_cache, :remove_avatar]
  end


end
