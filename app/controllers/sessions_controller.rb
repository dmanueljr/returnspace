class SessionsController < ApplicationController

  def index
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    session[:auth] = env["omniauth.auth"]
    redirect_to sessions_path
  end

  def destroy
    session[:user_id] = nil
    session[:auth] = nil
    redirect_to root_path
  end
end
