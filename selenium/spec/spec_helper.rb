require  'selenium-webdriver'
require 'rspec'
require_relative '../selenium_walkthrough/selenium_walkthrough'
require_relative '../selenium_walkthrough/lib/generating_data_random/faker'


RSpec.configure do |config|
  config.formatter = :documentation
end
