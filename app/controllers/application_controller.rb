class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permmited_parameters, if: :devise_controller?

  def configure_permmited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
end
