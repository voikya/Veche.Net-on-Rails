class ContactMailer < ActionMailer::Base
  default :to => "martin@veche.net", :from => "martin@veche.net"
  layout 'mailer'

  def contact(subject, message, email)
    @message = message
    mail(:reply_to => email, :subject => subject)
  end
end
