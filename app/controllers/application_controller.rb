class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_picture, :firstname, :lastname, :street_address])
        devise_parameter_sanitizer.permit(:account_update, keys: [:profile_picture, :firstname, :lastname, :street_address])
    end
end
