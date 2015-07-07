OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['google_client_id'], ENV['google_client_secret'],
    {
     access_type: 'offline',
     scope: 'https://www.googleapis.com/auth/plus.login, https://www.googleapis.com/auth/userinfo.email',
     redirect_uri: 'http://localhost:3000/auth/google_oauth2/callback'
    }
end
