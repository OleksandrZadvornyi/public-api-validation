import request from 'supertest';

const BASE_URL = 'https://fakestoreapi.com';

export const apiClient = {
  get: async (endpoint) => {
    return await request(BASE_URL)
      .get(endpoint)
      .set('Accept', 'application/json'); // Centralized headers can be added here
  },

  // TODO: add post, put, and delete methods here
};
