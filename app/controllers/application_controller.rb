class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password,
      :password_confirmation, :date_of_birth, :remember_me, :avatar, :avatar_cache, :remove_avatar) }
            # devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :first_name, :last_name, :date_of_birth, :email, :password] )
            # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password, :date_of_birth) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password,
      :password_confirmation, :date_of_birth, :current_password, :avatar, :avatar_cache, :remove_avatar) }
        end
end
