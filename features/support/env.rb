require 'selenium-webdriver'
require 'webdrivers'

Before do
  @driver = Selenium::WebDriver.for :chrome
end

After do
  sleep 5
  @driver.quit
end

