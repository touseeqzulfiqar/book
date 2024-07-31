class ApplicationController < ActionController::Base

rescue_form CanCan::AccessDenied do |exception|
  flash[:alert] = exception.message
  redirect_to request.refere || root_path
  before_action :allow_perameters, if: :devise_controller?
  protected
  def allow_perameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :role])
  end
end
