import { Then } from '@cucumber/cucumber';
import { expect } from 'chai';

Then('the response status should be {int}', function (status) {
  expect(this.response.status).to.equal(status);
});
