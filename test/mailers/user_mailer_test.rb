class UserMailer < ApplicationMailer::Base
  default from: "heinen.m30@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Willkommen')
  end

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
