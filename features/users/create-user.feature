Feature: Add a New User
  As an API consumer
  I want to create a new user using the API
  So I can add users to the system

  Scenario: Create a user with all fields
    Given the API endpoint is "/users"
    When I send a POST request with payload:
    """
    {
      "username": "string",
      "email": "string",
      "password": "string"
    }
    """
    Then the response status should be 201
