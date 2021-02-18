class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    before_action :authenticate_user!
  
    protected
  
    def after_sign_in_path_for(resource)
      #current_user.is_a?(Admin) ? admin_tests_path : (stored_location_for(resource) || root_path)
      
    end

    def after_sign_out_path_for(scope)
        # return the path based on scope
      end
end
