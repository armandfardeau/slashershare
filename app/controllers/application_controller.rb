class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [
        :avatar,
        :enterprise,
        :username,
        :email,
        :age,
        :address,
        :phone,
        :password,
        :password_confirmation
    ])
  end

  def check_user_type(path = root_path)
    return if current_user.enterprise
    redirect_to path, notice: 'You must be an enterprise type member to access this area.'
  end
end
