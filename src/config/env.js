const ENV = process.env.NODE_ENV || 'test';

const config = {
  local: {
    baseURL: 'http://localhost:3000',
  },
  test: {
    baseURL: 'https://fakestoreapi.com',
  },
  production: {
    baseURL: 'https://api.yourproductionurl.com',
  },
};

export const environment = config[ENV];
