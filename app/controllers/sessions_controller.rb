class SessionsController < ApplicationController
  def new
  end

  def create
    p "*" * 20
    p params
    p "*" * 20
    p params[:user][:email]
    p User.find_by_email(params[:user][:email])
    p "*" * 20
    if @user = User.find_by_email(params[:user][:email])
      if @user && @user.password == params[:user][:password]
        session[:user_id] = @user.id
        p "successful login"
        p "session[:user_id] is #{session[:user_id]}"
        redirect '/entries'
      else
        redirect '/'
        p "no password match"
      end
    else
      p "user not found"
      redirect '/'
    end
  end
end
