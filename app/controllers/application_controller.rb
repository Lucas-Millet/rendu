class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_devise_parameters, if: :devise_controller?


  def configure_devise_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
  	
  end

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to articles_path, :notice => "aie tu n'a pas le droit d'aller ici"
  	end
end
