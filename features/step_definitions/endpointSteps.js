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

Given('I have a valid product payload', function () {
  // Creating a static payload
  this.payload = {
    title: 'Automated Test Product',
    price: 29.99,
    description: 'A product created via automated API test',
    image: 'https://i.pravatar.cc',
    category: 'electronic',
  };
});

When(
  'I send a POST request to {string} with the payload',
  async function (endpoint) {
    this.response = await apiClient.post(endpoint, this.payload);
  }
);

Then('the response should contain the created product ID', function () {
  // FakeStoreAPI responds with the created object, assigning an 'id'
  expect(this.response.body).to.have.property('id');
  expect(this.response.body.title).to.equal(this.payload.title);
});
