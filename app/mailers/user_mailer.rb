class UserMailer < ApplicationMailer
  default from: 'swatikanathe09@gmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://127.0.0.1:3000/users/new'
    mail(to: @user.email,
    subject: 'Welcome to My Awesome Site')
    # template_path: 'notifications',
    # template_name: 'another')
  end
end