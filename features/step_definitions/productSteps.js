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

Then('the response should contain a list of products', function () {
  // Assert the response body is an array and is not empty
  expect(this.response.body).to.be.an('array');
  expect(this.response.body.length).to.be.greaterThan(0);
});
