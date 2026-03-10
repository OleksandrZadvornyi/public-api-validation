import { Then } from '@cucumber/cucumber';
import { expect } from 'chai';

Then('the response should be a list of {word}', function (list) {
  expect(this.response.body).to.be.an('array');
});

Then('the response body should contain:', function (dataTable) {
  const expectedFields = dataTable.hashes();
  const body = this.response.body;

  expectedFields.forEach(({ field, value }) => {
    expect(body).to.have.property(field);

    if (value !== undefined) {
      expect(String(body[field])).to.equal(String(value));
    }
  });
});

Then(
  'the response body should contain a {string} array with {int} items',
  function (field, count) {
    const body = this.response.body;

    expect(body).to.have.property(field);
    expect(body[field]).to.be.an('array');
    expect(body[field]).to.have.lengthOf(count);
  }
);
