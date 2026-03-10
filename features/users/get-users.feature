Feature: Retrieve users
  As an API consumer
  I want to retrieve users from the API
  So I can view the available users and their details

  Scenario: Get all users
    Given the API endpoint is "/users"
    When I send a GET request
    Then the response status should be 200
    And the response should be a list of users

  Scenario: Get user by id
    Given the API endpoint is "/users/1"
    When I send a GET request
    Then the response status should be 200
    And the response body should contain:
    | field     |
    | username  |
    | email     |
    | password  |