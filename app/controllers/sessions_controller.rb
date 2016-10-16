class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create
    if @user = User.find_by_email(session_params[:email])
      if @user && @user.password == session_params[:password]
        session[:user_id] = @user.id
        redirect_to @user
      else
        redirect_to root_url
      end
    else
      redirect_to root_url
    end
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end
end
