class ApplicationController < ActionController::Base
    def after_sign_out_path_for scope
        user_session_path
      end
end
