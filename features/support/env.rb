require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/poltergeist'


Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'https://shielded-reaches-3114.herokuapp.com'
end

Capybara.javascript_driver = :poltergeist
options = { js_errors: false, timeout: 30, phantomjs_logger: StringIO.new, logger: nil, phantomjs_options: ['--load-images=yes', '--ignore-ssl-errors=yes'] }

Capybara.register_driver(:poltergeist) do |app|
  Capybara::Poltergeist::Driver.new app, options
end

Capybara.register_driver :selenium do |app|
  http_client = Selenium::WebDriver::Remote::Http::Default.new
  http_client.timeout = 30
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => http_client)
end

World(Capybara)
