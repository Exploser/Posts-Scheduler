Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter2, Rails.application.credentials.dig(:twitter, :client_id), Rails.application.credentials.dig(:twitter, :client_secret), callback_url:'/auth/twitter2/callback', scope: 'tweet.read users.read offline.access'

  provider(
    :twitter2,
    Rails.application.credentials.dig(:twitter, :client_id),
    Rails.application.credentials.dig(:twitter, :client_secret),
    callback_url:'/auth/twitter2/callback',
    scope: 'tweet.read users.read offline.access'
  )

end
