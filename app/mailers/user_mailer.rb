class UserMailer < ApplicationMailer
  default from: "Fachschaft Wirtschaft"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Willkommen auf unserer Seite')
  end

  def new_admin_content
    @users = User.with_role("Admin")
    @users.each do |user|
    mail(to: user.email, subject: 'Bitte neuen Content freigeben')
      end
  end

  def new_manager_content(id)
    @user = User.find(Team.find(id).user_id)
    mail(to: @user.email, subject: 'Bitte neuen Content freigeben')

  end
end
