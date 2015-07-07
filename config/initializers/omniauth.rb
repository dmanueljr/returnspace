Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["330244966698-bppo4d0dm72p71fumgb30vd6ndfqu9s3.apps.googleusercontent.com"], ENV["LTjxPDYJ4vhraVmMX7BdDth7"]
end
