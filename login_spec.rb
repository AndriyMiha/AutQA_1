
require 'selenium-webdriver'
require_relative 'login'

describe 'Login' do

  before(:each) do
	Selenium::WebDriver::Chrome.driver_path = File.join(File.absolute_path('', File.dirname("C://Projects/chromedriver")),"chromedriver","chromedriver.exe")
    @driver = Selenium::WebDriver.for :chrome
    @login = Login.new(@driver)
  end

  after(:each) do
    @driver.quit
  end

  it 'succeeded' do
    @login.with('tomsmith', 'SuperSecretPassword!')
    expect(@login.success_message_present?).to eql true
  end
  it 'failed' do
    @login.with('asdf', 'asdf')
    expect(@login.failure_message_present?).to eql true
  end
  

end