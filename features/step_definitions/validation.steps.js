import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';
import { apiClient } from '../../src/api/api-client.js';

Then('the response should be a list of products', function () {
  expect(this.response.body).to.be.an('array');
});

Then(
  'the product should contain {string} and {string}',
  function (title, price) {
    expect(this.response.body).to.have.property(title);
    expect(this.response.body).to.have.property(price);
  }
);
