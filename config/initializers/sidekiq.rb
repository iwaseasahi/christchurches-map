Sidekiq.configure_server do |config|
  case Rails.env
  when 'production' then
    config.redis = { url:  ENV['REDIS'], namespace: 'sidekiq' }
  else
    config.redis = { url: ENV['REDIS'], namespace: 'sidekiq' }
  end
end

Sidekiq.configure_client do |config|
  case Rails.env
  when 'production' then
    config.redis = { url: ENV['REDIS'], namespace: 'sidekiq' }
  else
    config.redis = { url: ENV['REDIS'], namespace: 'sidekiq' }
  end
end

