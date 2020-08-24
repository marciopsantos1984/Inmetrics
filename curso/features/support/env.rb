require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
# require 'site_prism'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'http://www.inmrobo.tk'
  config.default_max_wait_time = 5
  config.default_selector = :xpath
end
