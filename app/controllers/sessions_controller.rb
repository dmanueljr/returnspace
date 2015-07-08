class SessionsController < ApplicationController

  def index
  end

  def create
    if env["omniauth.auth"]
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      @auth = env["omniauth.auth"]
      # redirect_to root_path
    else
      user = User.find_by(email: params[:login][:email])

      if user && user.authenticate(params[:login][:password])
        #log them in (set a cookie)
        session[:user_id] = user.id.to_s
        redirect_to users_path
      else
        render :new
      end
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

end
