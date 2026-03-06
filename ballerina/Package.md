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
    "https://www.dayforcehcm.com/Api/ddn/V1/");
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

## Useful links

- Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
- Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
