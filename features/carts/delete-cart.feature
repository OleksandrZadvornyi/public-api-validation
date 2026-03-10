Feature: Delete a Cart
  As an API consumer
  I want to delete an existing cart using the API
  So I can remove products from the cart

  Scenario: Delete a cart
    Given the API endpoint is "/carts/1"
    When I send a DELETE request
    Then the response status should be 200