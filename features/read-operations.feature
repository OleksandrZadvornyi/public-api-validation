Feature: Core API Endpoint Validation
  As an API consumer
  I want to validate multiple GET endpoints
  So that I can ensure the core services are returning data correctly

  Scenario Outline: Successfully fetch data from various endpoints
    Given the API endpoint is "<endpoint>"
    When I send a GET request to the endpoint
    Then the response status code should be <status_code>
    And the response should contain a list of items

    Examples:
      | endpoint  | status_code |
      | /products | 200         |
      | /users    | 200         |
      | /carts    | 200         |