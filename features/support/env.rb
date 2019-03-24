 require 'rspec'
 require 'page-object'
 require 'data_magic'
 require 'capybara'
 require 'capybara/cucumber'
 require 'selenium-webdriver'
 require 'cucumber'
 require 'pry'
 require 'site_prism'
 require 'watir'
require 'yaml'
require 'capybara/rspec'

BROWSER = ENV['BROWSER']

ENV['TAGS']
ENV['QTD_BROWSERS']


 Capybara.register_driver :chrome_headless do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: {
        args: %w[ no-sandbox headless disable-gpu window-size=1280,1024]
          
      }
    )
  
    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)
    Capybara.ignore_hidden_elements = false
  end


Capybara.configure do |config|
  config.default_driver = :selenium
  config.javascript_driver = :selenium
end


Capybara.default_max_wait_time = 30