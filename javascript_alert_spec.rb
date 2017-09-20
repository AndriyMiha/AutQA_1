#this code needs assertion in spec?
require_relative 'javascript_alert'
require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

describe 'Javasc_alert' do

  before(:each) do
    Selenium::WebDriver::Chrome.driver_path = File.join(File.absolute_path('', File.dirname("C://Projects/chromedriver")),"chromedriver","chromedriver.exe")
    @driver = Selenium::WebDriver.for :chrome
    @javascr_alert = Javasc_alert.new(@driver)
  end

  after(:each) do
    @driver.quit
  end
  
    it 'Switch to and close alert' do
    @javascr_alert.example
    @javascr_alert.popup
	@javascr_alert.message_present?
  end
  
  end
  

