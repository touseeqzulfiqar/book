class ApplicationController < ActionController::Base
  before_action :allow_perameters, if: :devise_controller?
  def allow_perameters
    
  end
end
