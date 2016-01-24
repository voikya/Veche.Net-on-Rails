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

  def download
    @filename = params[:file]
    @downloads_path = Rails.root.join('app', 'assets', 'downloads')

    if Dir.entries(@downloads_path).include? @filename
      Download[@filename].increment!(:download_count)
      send_file @downloads_path.join(@filename)
    else
      raise ActionController::RoutingError, 'Not Found'
    end
  end

  def licensing
  end
end
