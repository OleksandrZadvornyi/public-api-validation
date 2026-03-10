Feature: Retrieve products
  As an API consumer
  I want to retrieve products from the API
  So I can view the available products and their details

  Scenario: Get all products
    Given the API endpoint is "/products"
    When I send a GET request
    Then the response status should be 200
    And the response should be a list of products

  Scenario: Get product by id
    Given the API endpoint is "/products/1"
    When I send a GET request
    Then the response status should be 200
    And the response body should contain:
    | field       |
    | title       |
    | price       |
    | description |
    | category    | 
    | image       |