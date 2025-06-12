@about
Feature: Add to Cart Sauce Demo

  Background:
    Given user access website saucedemo.com
    When user enter valid username and password
    And user click the login button
    
    Scenario: user add to cart Sauce Labs Backpack
    Given user should see the products page
    When user clicks the hamburger button
    And user navigates to the 'About' page
    Then user should sees the 'About' page