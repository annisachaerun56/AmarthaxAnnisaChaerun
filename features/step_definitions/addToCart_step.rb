When("user add Sauce Labs Backpack to the cart") do 
  @driver.find_element(id: "add-to-cart-sauce-labs-backpack").click
end

Then("the cart should contain {string}") do |item_name|
  @driver.find_element(class: 'shopping_cart_link').click
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { @driver.find_element(class: 'inventory_item_name').displayed? }
  
  cart_item = @driver.find_element(xpath: "//div[@class='inventory_item_name'][contains(text(), '#{item_name}')]")
  expect(cart_item.text).to eq(item_name)
end

When("user add Sauce Labs Fleece Jacket to the cart") do
    @driver.find_element(id: "add-to-cart-sauce-labs-fleece-jacket").displayed?
    @driver.find_element(id: "add-to-cart-sauce-labs-fleece-jacket").click
end