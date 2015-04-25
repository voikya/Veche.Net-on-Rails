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
      redirect_to login_path(redirect_to: request.fullpath)
    end
    session[:auth_attempts] = 0
    true
  end
end
