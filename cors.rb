Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'YOUR-NETLIFY_URL', 'YOUR-CUSTOM-DOMAIN'
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end