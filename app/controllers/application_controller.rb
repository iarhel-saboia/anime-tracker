class ApplicationController < ActionController::Base
include Pundit
    before_action :authenticate_user!, except: [:index]
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            Current.user = User.find_by(id: session[:user_id])
        end
    end
    protect_from_forgery with: :exception 
end

end
