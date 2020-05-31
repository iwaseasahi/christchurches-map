require 'redis'

uri = URI.parse('redis:://localhost:6379')
REDIS = Redis.new(host: uri.host, port: uri.port)
