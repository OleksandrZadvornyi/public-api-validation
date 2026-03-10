Feature: User Authentication
  As an API consumer
  I want to authenticate with the API
  So I can access protected resources
  
  Scenario: User login with valid credentials
    Given the API endpoint is "/auth/login"
    When I send a POST request with payload:
    """
    {
      "username": "mor_2314",
      "password": "83r5^_"
    }
    """
    Then the response status should be 201
    And the response body should contain:
      | field |
      | token |

  Scenario: User login with invalid credentials
    Given the API endpoint is "/auth/login"
    When I send a POST request with payload:
    """
    {
      "username": "invaliduser",
      "password": "invalidpassword"
    }
    """
    Then the response status should be 401
