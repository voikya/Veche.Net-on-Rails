class StaticController < ApplicationController
  layout 'static'

  def index
  end

  def contact
    @subject = nil
    @message = nil
    @email = nil
  end

  def sendmail
    @subject = params[:subject]
    @message = params[:message]
    @email = params[:email]
    if @subject.blank? || @message.blank? || @email.blank?
      render 'contact' and return
    else
      ContactMailer.contact(@subject, @message, @email).deliver
    end
  end
end
