# config/initializers/timeout.rb
Rails.application.config.middleware.insert_before 0, Rack::Timeout, service_timeout: 15
