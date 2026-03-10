Feature: Delete a User
  As an API consumer
  I want to delete an existing user using the API
  So I can remove users from the system

  Scenario: Delete a user
    Given the API endpoint is "/users/1"
    When I send a DELETE request
    Then the response status should be 200