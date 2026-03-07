Feature: Product Modification and Deletion
  As an API consumer
  I want to create, update and delete existing products
  So that I can manage the store inventory

  Scenario: Successfully create a new product
    Given I have a valid payload to create a product
    When I send a POST request to "/products" with the payload
    Then the response status code should be 201
    And the response should contain the created product details

  Scenario: Successfully update an existing product
    Given I have a valid payload to update a product
    When I send a PUT request to "/products/1" with the payload
    Then the response status code should be 200
    And the response should contain the updated product details

  Scenario: Successfully delete a product
    When I send a DELETE request to "/products/1"
    Then the response status code should be 200
    And the response should indicate the product was deleted