Feature: Add a New Cart
  As an API consumer
  I want to create a new cart using the API
  So I can add products to the cart

  Scenario: Create a cart with all fields
    Given the API endpoint is "/carts"
    When I send a POST request with payload:
    """
    {
      "userId": 1,
      "products": [
        {
          "title": "Test Product",
          "price": 29.99,
          "description": "A great test product",
          "category": "electronics",
          "image": "https://picsum.photos/200"
        },
        {
          "title": "Another Product",
          "price": 19.99,
          "description": "Another great product",
          "category": "books",
          "image": "https://picsum.photos/200"
        }
      ]
    }
    """
  Then the response status should be 201
  And the response body should contain:
    | field                   | value                     |
    | userId                  | 1                         |
  And the response body should contain a "products" array with 2 items
