# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    # asterisk is opening it wide up, fix to more specific later for security.
    # or use     
    # origins 'localhost:4200'  or make it specific like ( http://127.0.0.1:8080/#!/ )  used this tutorial: https://til.hashrocket.com/posts/4d7f12b213-rails-5-api-and-cors

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
