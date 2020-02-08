class ApplicationController < ActionController::Base
    def current_user
        if session[:user_id]
        @current_user || = User.find(session[])
        end
end
