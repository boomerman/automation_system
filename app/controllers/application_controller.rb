class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :college_roll, :university_roll_no, :year, :branch])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:college_roll, :university_roll_no, :year, :branch])
  end

end
