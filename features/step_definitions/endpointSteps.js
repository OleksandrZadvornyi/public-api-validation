import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';
import { apiClient } from '../../src/api/apiClient.js';

Given('the API endpoint is {string}', function (endpoint) {
  // Store the endpoint in the World context
  this.endpoint = endpoint;
});

When('I send a GET request to the endpoint', async function () {
  // Make the request and store the response in the World context
  this.response = await apiClient.get(this.endpoint);
});

Then('the response status code should be {int}', function (statusCode) {
  // Assert the status code matches the expected value
  expect(this.response.status).to.equal(statusCode);
});

Then('the response should contain a list of items', function () {
  // Assert the response body is an array and is not empty
  expect(this.response.body).to.be.an('array');
  expect(this.response.body.length).to.be.greaterThan(0);
});

Given('I have a valid payload to update a product', function () {
  this.payload = {
    title: 'Updated Test Product',
    price: 35.0,
    description: 'This product was updated during automated testing',
    image: 'https://i.pravatar.cc',
    category: 'electronic',
  };
});

When(
  'I send a PUT request to {string} with the payload',
  async function (endpoint) {
    this.response = await apiClient.put(endpoint, this.payload);
  }
);

Then('the response should contain the updated product details', function () {
  expect(this.response.body.title).to.equal(this.payload.title);
  expect(this.response.body.price).to.equal(this.payload.price);
});

When('I send a DELETE request to {string}', async function (endpoint) {
  this.response = await apiClient.delete(endpoint);
});

Then('the response should indicate the product was deleted', function () {
  expect(this.response.body).to.have.property('id');
  expect(this.response.body.id).to.equal(1);
});
