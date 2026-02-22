import { setWorldConstructor } from '@cucumber/cucumber';

class CustomWorld {
  constructor() {
    this.endpoint = '';
    this.response = null;
  }
}

setWorldConstructor(CustomWorld);
