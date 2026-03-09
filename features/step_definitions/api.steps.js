import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';
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
