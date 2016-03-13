class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = exception.message
    redirect_to redirect_url
  end

  private
  def redirect_url
    return new_user_session_url if current_user.nil?
  end
end
