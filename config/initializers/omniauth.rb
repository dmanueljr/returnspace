OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :google_oauth2, ENV['google_client_id'], ENV['google_client_secret'],

  {
    access_type: 'offline',
    prompt: 'select_account',
    scope: 'profile, email, drive',
    redirect_uri: 'http://localhost:3000/auth/google_oauth2/callback'
  }

end
