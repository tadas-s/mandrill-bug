Rails.application.config.action_mailer.smtp_settings = {
  :address   => ENV['MANDRILL_SMTP'],
  :port      => ENV['MANDRILL_PORT'],
  :user_name => ENV['MANDRILL_USER'],
  :password  => ENV['MANDRILL_PASSWORD'],
}

# To debug email message source uncomment the following and look
# for sent messages in tmp/mails:
# Rails.application.config.action_mailer.delivery_method = :file
