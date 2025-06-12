Given("user access website saucedemo.com") do
  @driver.navigate.to "https://www.saucedemo.com/"
end

When("user enter valid username and password") do
  @driver.find_element(id: 'user-name').send_keys('standard_user')
  @driver.find_element(id: 'password').send_keys('secret_sauce')
end

When("user enter invalid username and password") do
  @driver.find_element(id: 'user-name').send_keys('invalid_user')
  @driver.find_element(id: 'password').send_keys('wrong_password')
end

And("user click the login button") do
  @driver.find_element(id: 'login-button').click
end

Then("user should see the products page") do
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { @driver.current_url.include?("inventory.html") }
  expect(@driver.current_url).to include("inventory.html")
end