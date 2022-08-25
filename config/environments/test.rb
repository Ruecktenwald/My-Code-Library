Rails.application.configure do

  config.web_console.development_only = false

  config.cache_classes = true

  config.eager_load = false

  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    'Cache-Control' => 'public, max-age=3600'
  }

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_dispatch.show_exceptions = false

  config.action_controller.allow_forgery_protection = false
  config.action_mailer.perform_caching = false

  config.action_mailer.delivery_method = :test

  config.active_support.deprecation = :stderr


  config.action_mailer.delivery_method = :test
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.default_options = { from: "MCLcheatsheets@gmail.com" }
  config.action_mailer.smtp_settings = {
   address: "smtp.gmail.com",
   port: 25,
   authentication: "plain",
   enable_starttls_auto: true,
   user_name: ENV["GMAIL_USERNAME"],
   password: ENV["GMAIL_PASSWORD"],
   domain: ENV["DOMAIN_NAME"],
   openssl_verify_mode: "none",
 }

end
