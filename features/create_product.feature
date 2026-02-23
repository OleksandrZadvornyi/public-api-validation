Feature: Product Creation API
  As an API consumer
  I want to create a new product
  So that it can be added to the store inventory

  Scenario: Successfully create a new product
    Given I have a valid product payload
    When I send a POST request to "/products" with the payload
    Then the response status code should be 201
    And the response should contain the created product ID