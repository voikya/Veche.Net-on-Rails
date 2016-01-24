class ErrorsController < ActionController::Base
  layout 'static'

  def not_found
    render :status => 404
  end

  def internal_error
    render :status => 500
  end

  def unsupported
  end
end
