class ContactMailer < ActionMailer::Base
  default :to => "republicofnovegrad@gmail.com", :from => "republicofnovegrad@gmail.com"
  layout 'mailer'

  def contact(subject, message, email)
    @message = message
    mail(:reply_to => email, :subject => subject)
  end
end
