require 'capybara/cucumber'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'

World(TakePicture)

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/config.yaml")
DATA = YAML.load_file(File.dirname(__FILE__) + "/data/test_data.yaml")
World Capybara::DSL

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_default']
  config.default_max_wait_time = 5
  DATA['userLogin']
  DATA['pwdLogin']
  config.default_selector = :xpath
end
