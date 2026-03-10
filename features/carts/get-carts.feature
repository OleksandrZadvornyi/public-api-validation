Feature: Retrieve carts
  As an API consumer
  I want to retrieve carts from the API
  So I can view the available carts and their details

  Scenario: Get all carts
    Given the API endpoint is "/carts"
    When I send a GET request
    Then the response status should be 200
    And the response should be a list of products

  Scenario: Get cart by id
    Given the API endpoint is "/carts/1"
    When I send a GET request
    Then the response status should be 200
    And the response body should contain:
      | field       |
      | userId      |
      | products    |