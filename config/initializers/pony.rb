Pony.options = {
  :via => :smtp,
  :via_options => {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :domain => 'heroku.com',
    :user_name => ENV['SENDGRID_USERNAME'] || 'app20403573@heroku.com',
    :password => ENV['SENDGRID_PASSWORD'] || 'vjibfbnb',
    :authentication => :plain,
    :enable_starttls_auto => true
  }
}
