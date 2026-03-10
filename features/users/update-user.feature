Feature: Update a User
  As an API consumer
  I want to update an existing user using the API
  So I can modify user information in the system

  Scenario: Update a user with all fields
    Given the API endpoint is "/users/2"
    When I send a PUT request with payload:
    """
    {
      "username": "updateduser",
      "email": "updateduser@example.com",
      "password": "updatedpassword"
    }
    """
    Then the response status should be 200
    And the response body should contain:
      | field       | value                     |
      | username    | updateduser               |
      | email       | updateduser@example.com   |
      | password    | updatedpassword           |
