class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  before_action :configure_permitted_parameters, 
  if: :devise_controller?
  def configure_permitted_parameters              
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :password, :password_confirmation,   :current_password)} 
  end

  # load_and_authorize_resource
  include Pagy::Backend
  rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
    end
end
