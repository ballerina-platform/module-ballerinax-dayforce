# Running Tests

## Prerequisites

You need to obtain user credentials to run the tests against the Dayforce live server.

To obtain this, refer to the [Setup guide](https://github.com/ballerina-platform/module-ballerinax-dayforce/blob/main/ballerina/Module.md).

## Test Environments

There are two test environments for running the `dayforce` connector tests. The default environment is a mock server for the Dayforce API. The other environment is the Dayforce live server.

You can run the tests in either of these environments, and each has its own compatible set of tests.

| Test Groups | Environment                                        |
|-------------|----------------------------------------------------|
| mock_tests  | Mock server for Dayforce API (Default Environment) |
| live_tests  | Dayforce API                                       |

## Running Tests in the Mock Server

To execute the tests on the mock server, ensure that the `IS_LIVE_SERVER` environment variable is either set to `false` or left unset before initiating the tests.

This environment variable can be configured within the `Config.toml` file located in the `tests` directory or specified as an environment variable.

### Using a `Config.toml` File

Create a `Config.toml` file in the `tests` directory with the following content:

```toml
isLiveServer = false
```

### Using Environment Variables

Alternatively, you can set the environment variable directly.

For Linux or macOS:

```bash
export IS_LIVE_SERVER=false
```

For Windows:

```bash
setx IS_LIVE_SERVER false
```

Then, run the following command to execute the tests:

```bash
./gradlew clean test
```

## Running Tests Against the Dayforce Live API

### Using a `Config.toml` File

Create a `Config.toml` file in the `tests` directory and add your authentication credentials:

```toml
isLiveServer = true
username="<your-username>"
password="<your-password>"
```

### Using Environment Variables

Alternatively, you can set your authentication credentials as environment variables.

For Linux or macOS:

```bash
export IS_LIVE_SERVER=true
export USERNAME=<your-username>
export PASSWORD=<your-password>
```

For Windows:

```bash
setx IS_LIVE_SERVER true
setx USERNAME <your-username>
setx PASSWORD <your-password>
```

Then, run the following command to execute the tests:

```bash
./gradlew clean test
```
