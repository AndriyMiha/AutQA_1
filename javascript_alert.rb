
class Javasc_alert


def initialize(driver)
    @driver = driver
end

def example
  @driver.get 'http://the-internet.herokuapp.com/javascript_alerts'
  @driver.find_elements(css: 'button')[1].click
  
end

def popup
  popup = @driver.switch_to.alert
  popup.accept
end

def message_present?
	result = @driver.find_element(id: 'result').text
	expect(result).to eql('You clicked: Ok')
end


end
