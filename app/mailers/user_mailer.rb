class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user
    @greeting = "Hi"

    mail to: user.email, :subject => 'Reset password instructions'
  end

  def account_create(user)
    @user = user
    @greeting = "Hi"

    mail to: user.email, :subject => 'Account created successfully at Authy'
  end
end
