Feature: Add a New Product
  As an API consumer
  I want to create a new product using the API
  So I can add products to the catalog

  Scenario: Create a product with all fields
    Given the API endpoint is "/products"
    When I send a POST request with payload:
    """
    {
      "title": "Test Product",
      "price": 29.99,
      "description": "A great test product",
      "category": "electronics",
      "image": "https://picsum.photos/200"
    }
    """
  Then the response status should be 201
  And the response body should contain:
    | field       | value                     |
    | title       | Test Product              |
    | price       | 29.99                     |
    | description | A great test product      |
    | category    | electronics               |
    | image       | https://picsum.photos/200 |
