# Public API Validation

This project is a Behavior-Driven Development (BDD) API testing framework. It is designed to validate public-facing APIs using Cucumber, Supertest, and Chai.

## Features Tested

The framework includes automated test scenarios for the following API domains:

* **Authentication** (`features/auth`)
* **Carts** (`features/carts`)
* **Products** (`features/products`)
* **Users** (`features/users`)

## Technology Stack

* **Test Runner:** Cucumber.js
* **HTTP Client:** Supertest
* **Assertion Library:** Chai

## Project Structure

```text
├── features/
│   ├── auth/
│   ├── carts/
│   ├── products/
│   ├── users/
│   ├── step_definitions/
│   │   ├── api.steps.js
│   │   ├── response.steps.js
│   │   └── validation.steps.js
│   └── support/
│       └── world.js
├── reports/
│   └── cucumber-report.html
├── src/
│   ├── api/
│   │   └── api-client.js
│   └── config/
│       └── env.js
├── cucumber.js
└── package.json
```

## Installation

1. Ensure you have Node.js installed on your machine.
2. Clone the repository to your local environment.
3. Install the required dependencies:
    ```bash
    npm install
    ```

## Configuration

The framework is built to support multiple environments (`local`, `test`, `production`), which are managed in `src/config/env.js`.

By default, the framework runs against the `test` environment (configured to `https://fakestoreapi.com`). You can override this by setting the `NODE_ENV` environment variable before executing your tests.

**Mac/Linux:**

```bash
NODE_ENV=local npm test
```

**Windows:**

```cmd
set NODE_ENV=local && npm test
```

## Running Tests

The project includes the following npm scripts:

* **Run all tests:** 
    ```bash
    npm test
    ```

* **Format code:** 
    ```bash
    npm run format
    ```

* **Check formatting:** 
    ```bash
    npm run format:check
    ```

## Test Reports

After executing the test suite, the framework automatically generates a detailed HTML report. You can review your test results by opening `reports/cucumber-report.html` in any standard web browser.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
