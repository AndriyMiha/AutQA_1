# filename: login.rb

class Login

  USERNAME_INPUT  = { css: "input[name='username']" }
  PASSWORD_INPUT  = { css: "input[name='password']" }
  SUBMIT_BUTTON   = { css: ".radius"  }
  SUCCESS_MESSAGE = { css: '.flash.success' }
  FAILURE_MESSAGE = { css: '.flash.error' }

  def initialize(driver)
    @driver = driver
    @driver.get 'http://the-internet.herokuapp.com/login'
  end

  def with(username, password)
    @driver.find_element(USERNAME_INPUT).send_keys('tomsmith')
    @driver.find_element(PASSWORD_INPUT).send_keys('SuperSecretPassword!')
    @driver.find_element(SUBMIT_BUTTON).click
  end

  def success_message_present?
    @driver.find_element(SUCCESS_MESSAGE).displayed?
  end
  
  def failure_message_present?
    @driver.find_element(FAILURE_MESSAGE).displayed?
  end

end


#//input[@id='password']" 
