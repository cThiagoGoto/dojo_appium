require 'appium_lib'

class AndroidScreenBase
  def wait_element_for_touch(element)
	  wait = Selenium::WebDriver::Wait.new timeout: 30
	  begin
      wait.until { find_element(:id, element).click }
    rescue Selenium::WebDriver::Error::TimeOutError => e
      raise "Problem on touch the element #{element} \n Error: #{e.message}"
    end
  end 
end