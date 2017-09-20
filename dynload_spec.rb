require_relative 'dyn_load'
require 'selenium-webdriver'

describe 'Dynamic Loading' do

  before(:each) do
    Selenium::WebDriver::Chrome.driver_path = File.join(File.absolute_path('', File.dirname("C://Projects/chromedriver")),"chromedriver","chromedriver.exe")
    @driver = Selenium::WebDriver.for :chrome
    @dynamic_loading = DynamicLoading.new(@driver)
  end

  after(:each) do
    @driver.quit
  end

  it 'Example 1: Hidden Element' do
    @dynamic_loading.example(1)
    @dynamic_loading.start
    expect(@dynamic_loading.finish_text_present?).to eql true
  end
  
  it 'Example 2: Rendered after the fact' do
    @dynamic_loading.example 2
    @dynamic_loading.start
    expect(@dynamic_loading.finish_text_present?).to eql true
  end

end