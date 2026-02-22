Feature: Product Retrieval API
  As an API consumer
  I want to be able to retrieve a list of products
  So that I can display them in the application

  Scenario: Successfully fetch a list of products
    Given the API endpoint is "/products"
    When I send a GET request to the endpoint
    Then the response status code should be 200
    And the response should contain a list of products