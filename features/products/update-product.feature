Feature: Update a Product
  As an API consumer
  I want to update an existing product using the API
  So I can modify product information in the catalog

  Scenario: Update a product with all fields
    Given the API endpoint is "/products/2"
    When I send a PUT request with payload:
    """
    {
      "title": "Updated Product",
      "price": 39.99,
      "description": "An updated test product",
      "category": "electronics",
      "image": "https://picsum.photos/200"
    }
    """
  Then the response status should be 200
  And the response body should contain:
    | field       | value                     |
    | title       | Updated Product           |
    | price       | 39.99                     |
    | description | An updated test product   |
    | category    | electronics               |
    | image       | https://picsum.photos/200 |
