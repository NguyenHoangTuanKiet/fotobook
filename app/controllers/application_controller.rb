class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar])
  end

  private

  def after_sign_in_path_for(resource_or_scope)
    user_path(current_user)
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

end
