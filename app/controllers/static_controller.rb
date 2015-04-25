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

  def login_form
    @redirect_path = params[:redirect_to]
    render :login
  end

  def login
    session[:authorization] = params[:password]
    redirect_to params[:redirect]
  end
end
