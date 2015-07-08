module SessionsHelper
<<<<<<< HEAD
=======
    def current_user
  	     @current_user ||= User.find_by(id: session[:user_id])
    end
>>>>>>> 64a9bc026fd69c6a2efd8756f9c4b7dac9afaf79
end
