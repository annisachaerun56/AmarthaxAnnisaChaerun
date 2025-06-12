@atc
Feature: Add to Cart Sauce Demo

  Background:
    Given user access website saucedemo.com
    When user enter valid username and password
    And user click the login button
    
    @atc1
    Scenario: user add to cart Sauce Labs Backpack
    Given user should see the products page
    When user add Sauce Labs Backpack to the cart
    Then the cart should contain "Sauce Labs Backpack"

    @atc2
    Scenario: user add to cart Sauce Labs Fleece Jacket
    Given user should see the products page
    When user add Sauce Labs Fleece Jacket to the cart
    Then the cart should contain "Sauce Labs Fleece Jacket"