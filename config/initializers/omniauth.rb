Rails.application.config.middleware.use OmniAuth::Builder do
  provider :azure_oauth2,
    {
      client_id: ENV['client_id'],
      client_secret: ENV['client_secret']

    }
end
