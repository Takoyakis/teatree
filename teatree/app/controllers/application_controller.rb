class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name]
    devise_parameter_sanitizer.for(:account_update) << [:avatar, :favorite_tea_type, :favorite_leaf, :favorite_shop, :preference]
  end
end
