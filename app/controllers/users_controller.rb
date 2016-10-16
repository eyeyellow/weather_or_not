class UsersController < ApplicationController
  def new
  end

  def create
    p "*" * 20
    p params
    p "*" * 20
    if params[:user][:password] == params[:user][:confirm_password]
      p "password confirmed"
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        p "user creation successful"
        redirect_to @user
      else
        p "user creation was unsuccessful"
      end
    else
      redirect_to root_url
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
