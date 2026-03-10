Feature: Delete a Product
  As an API consumer
  I want to delete an existing product using the API
  So I can remove products from the catalog

  Scenario: Delete a product
    Given the API endpoint is "/products/1"
    When I send a DELETE request
    Then the response status should be 200