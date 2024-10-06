# Ballerina Dayforce Connector

[![Build Status](https://github.com/ballerina-platform/module-ballerinax-dayforce/workflows/CI/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-dayforce/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/ballerina-platform/module-ballerinax-dayforce/branch/main/graph/badge.svg)](https://codecov.io/gh/ballerina-platform/module-ballerinax-dayforce)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-dayforce.svg)](https://github.com/ballerina-platform/module-ballerinax-dayforce./commits/main)
[![GraalVM Check](https://github.com/ballerina-platform/module-ballerinax-dayforce/actions/workflows/build-with-bal-test-graalvm.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-dayforce/actions/workflows/build-with-bal-test-graalvm.yml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Overview

Dayforce is a comprehensive human capital management system that covers the entire employee lifecycle including HR, payroll, benefits, talent management, workforce management, and services. The entire system resides on cloud that takes the burden of managing and replicating data on-premise.

The Dayforce connector allows you to access the REST API of Dayforce HCM specifically based on Rest API version v1. 

This connector has been tested exclusively in the Dayforce developer sample environment. If you encounter any technical issues, please reach out to us using the links provided in the [Useful links](#useful-links) section.

## Setup guide

### Step 1: Create a Dayforce account

1. Navigate to the [Dayforce](https://developers.dayforce.com/Build/Home.aspx) website and register. Follow the instructions to create an account. If your company has already purchased a namespace in Dayforce, use that to sign up. Otherwise, you can still use their `sample` environment by selecting `sample` option.

   <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-dayforce/main/docs/setup/resources/signing.png alt="Register for Dayforce" width="50%">

2. Once you have registered, you will receive an email with a link to activate your account. 

   <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-dayforce/main/docs/setup/resources/email.png alt="Registration email for Dayforce" width="50%">

3. Click on the link sent in the email to complete the registration process.

   <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-dayforce/main/docs/setup/resources/confirm-registration.png alt="Confirm registration" width="50%">

4. After confirming your registration, you'll get a success message. Click on the "Sign In" button to log in to your account.

   <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-dayforce/main/docs/setup/resources/registration-complete.png alt="Registration complete" width="50%">

5. Enter your email address and password to log in.

   <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-dayforce/main/docs/setup/resources/sign-in.png alt="Sign in to Dayforce" width="50%">

### Step 2: Obtain the user credentials to access the Dayforce API

To get the credentials for the `sample` environment, follow the instructions below:
1. Navigate to API Explorer -> Employee -> GET Employees.
2. Locate the basic authentication credentials, including the `username` and `password`, for the sample environment.
   <img src=https://raw.githubusercontent.com/ballerina-platform/module-ballerinax-dayforce/main/docs/setup/resources/auth-tokens.png alt="Obtain auth tokens" width="50%">

## Quickstart

To use the `dayforce` connector in your Ballerina project, modify the `.bal` file as follows:

### Step 1: Import the module

Import the `ballerinax/dayforce` module into your Ballerina project.
```ballerina
import ballerinax/dayforce;
```

### Step 2: Instantiate a new connector

Instantiate a new `dayforce:Client` giving the auth details.

```ballerina
dayforce:Client dayforce = check new (
   {
      auth: { 
            username: "<username>", 
            password: "<password>"
      }
   }, 
   "https://www.dayforcehcm.com/Api");
```

### Step 3: Invoke the connector operation

Now, utilize the available connector operations.
```ballerina
public function main() returns error? {
    dayforce:Payload_Employee employee = check dayforce->/ddn/V1/Employees/'42199;
}
```

### Step 4: Run the Ballerina application

Use the following command to compile and run the Ballerina program.

```bash
bal run
```

## Issues and projects 

The **Issues** and **Projects** tabs are disabled for this repository as this is part of the Ballerina library. To report bugs, request new features, start new discussions, view project boards, etc., visit the Ballerina library [parent repository](https://github.com/ballerina-platform/ballerina-library). 

This repository only contains the source code for the package.

## Build from the source

### Prerequisites

1. Download and install Java SE Development Kit (JDK) version 17. You can download it from either of the following sources:

   * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
   * [OpenJDK](https://adoptium.net/)

    > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

    > **Note**: Ensure that the Docker daemon is running before executing any tests.

### Build options

Execute the commands below to build from the source.

1. To build the package:
   ```
   ./gradlew clean build
   ```

2. To run the tests:
   ```
   ./gradlew clean test
   ```

3. To build the without the tests:
   ```
   ./gradlew clean build -x test
   ```

5. To debug package with a remote debugger:
   ```
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:
   ```
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:
    ```
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:
   ```
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/main/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* For more information go to the [`dayforce` package](https://lib.ballerina.io/ballerinax/dayforce/latest).
* For example demonstrations of the usage, go to [Ballerina By Examples](https://ballerina.io/learn/by-example/).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
* Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
