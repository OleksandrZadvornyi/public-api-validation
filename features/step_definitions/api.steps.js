import { Given, When } from '@cucumber/cucumber';
import { apiClient } from '../../src/api/api-client.js';

Given('the API endpoint is {string}', function (endpoint) {
  this.endpoint = endpoint;
});

When('I send a {word} request', async function (method) {
  const response = await apiClient[method.toLowerCase()](
    this.endpoint,
    this.payload
  );

  this.response = response;
});

When('I send a POST request with payload:', async function (docString) {
  this.payload = JSON.parse(docString);

  this.response = await apiClient.post(this.endpoint, this.payload);
});
