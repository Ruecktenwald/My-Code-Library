require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'test@example.com')
to = Email.new(email: 'test@example.com')
subject = 'Sending with SendGrid is Fun'
content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers




harry



config.action_mailer.default_url_options = { host: 'nameless-journey-14681.herokuapp.com' }
 config.action_mailer.raise_delivery_errors = true
 config.action_mailer.delivery_method = :smtp
host = 'nameless-journey-14681.herokuapp.com'
 protocol = 'https'
 config.action_mailer.default_url_options = { host: host, protocol: protocol}
 ActionMailer::Base.smtp_settings = {
   :address        => 'smtp.sendgrid.net',
   :port           => '587',
   :authentication => :plain,
   :user_name      => ENV['SENDGRID_USERNAME'],
   :password       => ENV['SENDGRID_PASSWORD'],
   :domain         => 'heroku.com',
   :enable_starttls_auto => true
 }