When("user clicks the hamburger button") do
    wait = Selenium::WebDriver::Wait.new(timeout: 10, interval: 0.5)
    hamburger_button = wait.until { @driver.find_element(id: 'react-burger-menu-btn') }
    @driver.execute_script('arguments[0].scrollIntoView(true);', hamburger_button)
    hamburger_button.click
end

And("user navigates to the 'About' page") do
    @driver.navigate.to "https://www.saucelabs.com/"
end

Then("user should sees the 'About' page") do
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @driver.current_url.include?("saucelabs.com") }
    expect(@driver.current_url).to include("saucelabs.com")
end