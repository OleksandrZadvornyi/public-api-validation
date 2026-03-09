import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';
import { apiClient } from '../../src/api/api-client.js';

Then('the response status should be {int}', function (status) {
  expect(this.response.status).to.equal(status);
});
