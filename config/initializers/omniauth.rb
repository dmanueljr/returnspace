OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :google_oauth2, ENV['google_client_id'], ENV['google_client_secret'],
<<<<<<< HEAD
  {
    access_type: 'offline',
    scope: 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/drive',
    redirect_uri: 'http://localhost:3000/auth/google_oauth2/callback'
  }
=======
    {
     access_type: 'offline',
     scope: 'https://www.googleapis.com/auth/plus.login, https://www.googleapis.com/auth/userinfo.email, https://www.googleapis.com/auth/drive',
     redirect_uri: 'http://localhost:3000/auth/google_oauth2/callback'
    }
>>>>>>> 64a9bc026fd69c6a2efd8756f9c4b7dac9afaf79

end
