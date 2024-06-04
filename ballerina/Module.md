## Overview

Dayforce is a comprehensive human capital management system that covers the entire employee lifecycle including HR, payroll, benefits, talent management, workforce management, and services. The entire system resides on cloud that takes the burden of managing and replicating data on-premise.

The Dayforce connector allows you to access the REST API of Dayforce HCM.

## Setup guide

### Step 1: Create a Dayforce account

Navigate to the [Dayforce](https://developers.dayforce.com) website and register. Follow the instructions to create an account. If your company has already purchased a namespace in Dayforce, use that to sign up. Otherwise, you can still use their `sample` environment by selecting `sample` option.

### Step 2: Obtain the user credentials to access the Dayforce API

To get the credentials for the `sample` environment, follow the instructions below:
1. Navigate to API Explorer -> Employee -> GET Employees.
2. Locate the basic authentication credentials, including the `username` and `password`, for the sample environment.

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
    dayforce:Client dayforce = ...//
    dayforce:Payload_Employee employee = check dayforce->/ddn/V1/Employees/'42199;
}
```

### Step 4: Run the Ballerina application

Use the following command to compile and run the Ballerina program.

```bash
bal run
```
