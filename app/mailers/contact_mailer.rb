class ContactMailer < ActionMailer::Base
  default :to => "republicofnovegrad@gmail.com"
  layout 'mailer'

  def contact(subject, message, email)
    @message = message
    mail(:from => email, :subject => subject)
  end
end
