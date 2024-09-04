// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.org).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/os;
import ballerina/test;

configurable boolean isLiveServer = os:getEnv("IS_LIVE_SERVER") == "true";
configurable string username = isLiveServer ? os:getEnv("USERNAME") : "test";
configurable string password = isLiveServer ? os:getEnv("PASSWORD") : "test";
configurable string serviceUrl = isLiveServer ? "https://ustest241-services.dayforcehcm.com/Api" : "http://localhost:9090";

ConnectionConfig config = {
    auth: {
        username,
        password
    }
};

Client dayforce = check new (config, serviceUrl);

@test:Config {}
function testGetEmployee() returns error? {
    Payload_Employee employee = check dayforce->/ddn/V1/Employees/'42199;
    test:assertEquals(employee?.Data?.EmployeeNumber, "42199");
}
