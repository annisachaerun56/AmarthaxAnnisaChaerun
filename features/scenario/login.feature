@login 
Feature: Login Sauce Demo

  Scenario: user access website saucedemo.com
    Given user access website saucedemo.com
    When user enter valid username and password
    And user click the login button
    Then user should see the products page
    