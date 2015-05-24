class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def require_authorization!
    # TODO: Move out of session for better security
    return false if session[:auth_attempts] == 3
    if session[:authorization] && session[:authorization] != ENV['ADMIN_PASSWORD']
      session[:auth_attempts] = (session[:auth_attempts] || 0) + 1
    end
    if session[:authorization] != ENV['ADMIN_PASSWORD']
      if request.headers['Accept'] == 'application/json'
        response.headers['Location'] = login_path(redirect_to: request.fullpath)
        render :nothing => true, :status => :unauthorized and return false
      else
        redirect_to(login_path(redirect_to: request.fullpath)) and return false
      end
    end
    session[:auth_attempts] = 0
    true
  end

  def is_admin?
    session[:authorization] == ENV['ADMIN_PASSWORD']
  end
end
