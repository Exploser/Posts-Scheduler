Rails.application.config.middleware.use OmniAuth::Builder, config.action_controller.allow_forgery_protection = false do
  provider :twitter2, Rails.application.credentials.dig(:twitter, :api_key), Rails.application.credentials.dig(:twitter, :api_secret), callback_url: "/auth/twitter2/callback", scope: 'tweet.read users.read offline.access'
end
