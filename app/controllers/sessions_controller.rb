class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user=User.find_by_username(params[:user][:username])
        if(@user.authenticate(params[:user][:password]))
            redirect_to concerts_path
        else
            redirect_to login_path
        end        
    end
    
end
