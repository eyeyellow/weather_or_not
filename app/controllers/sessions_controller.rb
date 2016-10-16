class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by_email(session_params[:email])
      if @user && @user.password == session_params[:password]
        session[:user_id] = @user.id
        redirect_to @user
      else
        @error = "Invalid input. Please try again."
        render new_session_path
      end
    else
      @error = "User not found."
      render new_session_path
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
