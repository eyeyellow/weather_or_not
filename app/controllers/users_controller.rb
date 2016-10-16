class UsersController < ApplicationController
  def new
  end

  def create
    if params[:user][:password] == params[:user][:confirm_password]
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user
      else
        @error = "User creation was unsuccessful"
        render new_user_path
      end
    else
      @error = "Password does not match"
      render new_user_path
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
