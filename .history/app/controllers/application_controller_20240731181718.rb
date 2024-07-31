class ApplicationController < ActionController::Base
  before_action :allow_perameters, if: :devise_controller?
  protected
  def allow_perameters
    devise
  end
end
