import request from 'supertest';
import { environment } from '../config/env.js';

const BASE_URL = environment.baseURL;

export const apiClient = {
  get: async (endpoint) => {
    return await request(BASE_URL)
      .get(endpoint)
      .set('Accept', 'application/json');
  },

  post: async (endpoint, payload) => {
    return await request(BASE_URL)
      .post(endpoint)
      .send(payload)
      .set('Accept', 'application/json')
      .set('Content-Type', 'application/json');
  },

  put: async (endpoint, payload) => {
    return await request(BASE_URL)
      .put(endpoint)
      .send(payload)
      .set('Accept', 'application/json')
      .set('Content-Type', 'application/json');
  },

  delete: async (endpoint) => {
    return await request(BASE_URL)
      .delete(endpoint)
      .set('Accept', 'application/json');
  },
};
