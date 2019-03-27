class UserMailer < ApplicationMailer

  default from: 'notifications@example.com'

  def welcome_email
    user_name = params[:user_name]
    @url  = 'http://example.com/login'
    mail(from: 'abc@exampel.com', to: "kietnguyen.op@gmail.com", subject: "amsnc #{user_name}")
  end

end
