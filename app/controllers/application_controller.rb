class ApplicationController < ActionController::Base
  helper_method :current_user, :user_authenticated?

  def current_user
    @_current_user ||= User.find(session[:id])
  end

  def user_authenticated?
    session[:id].present?
  end

  def authenticate_user!
    redirect_to root_path unless user_authenticated?
  end
end
