Feature: Update a Cart
  As an API consumer
  I want to update an existing cart using the API
  So I can modify product information in the cart

  Scenario: Update a cart with all fields
    Given the API endpoint is "/carts/2"
    When I send a PUT request with payload:
    """
    {
      "userId": 2,
      "products": [
        {
          "id": 1,
          "title": "Updated Product",
          "price": 39.99,
          "description": "An updated test product",
          "category": "electronics",
          "image": "https://picsum.photos/300"
        },
        {
          "id": 2,
          "title": "Another Updated Product",
          "price": 19.99,
          "description": "Another updated product",
          "category": "books",
          "image": "https://picsum.photos/300"
        }
      ]
    }
    """
  Then the response status should be 200
  And the response body should contain:
    | field       | value                     |
    | userId      | 2                         |
  And the response body should contain a "products" array with 2 items
