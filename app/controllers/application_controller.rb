class ApplicationController < ActionController::Base
include Pundit
before_action :authenticate_user!, except: [:index]
protect_from_forgery with: :exception

rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
private
    def user_not_authorized
        flash[:notice] = "you do not have permission to perfome this action"
        redirect_to(request.referrer||root_path)
    end
end

   