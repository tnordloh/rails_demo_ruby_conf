class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :admin_user?

  before_action :authorize

  protected

  def authorize
    unless admin_user?
      redirect_to root_url, notice: "this page requires admin access"
    end
  end
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def admin_user?
    current_user
    !!session[:user_id] && current_user.access == 'admin'
  end
end
