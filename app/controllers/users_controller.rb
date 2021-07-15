class UsersController < ApplicationController
  before_action :redirect_if_not_signed_in, only: [:show, :edit]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User successfully created"
      session[:user_id] = @user.id
      redirect_to "/profile"
    else
      flash[:error] = "Something went wrong"
      render "new"
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :first_name, :last_name, :age, :address, :password, :password_confirmation)
  end

  def show
    #byebug
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if(@user.authenticate(params[:user][:old_password]))
      if @user.update(user_params)
        flash[:success] = "User was successfully updated"
        redirect_to profile_path
      else
        render 'edit'
      end
    else
      flash[:error]="Incorrect password."
      render 'edit'
    end
  end
  
end
