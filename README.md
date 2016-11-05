mbed Device Connector integration bridge image importer for generic MQTT brokers

Original Date: August 12, 2016

    8/12/2016: Initial checkin. Cloned and configuration file updated from latest runtimes  

    8/13/2016: Updated with fixes. Added simple test scripts (test_scripts directory)

    8/14/2016: Updated with notification type fixes. NODEFLOW.txt updated with sample node flow for local NodeRED instances

    8/16/2016: Updated script to support DockerHub with passthru of API Token. Bridge updated. Bridge supports long polling

    8/23/2016: Updated with latest bridge. MQTT topics now align with AWS IoT.

    8/24/2016: Updated with latest bridge. 

    8/31/2016: Updated with latest bridge. Minor fix to CoAP responses where "verb" key is now "coap_verb" key - aligns with request payload structure.

    9/13/2016: Updated with latest bridge.

    9/20/2016: Updated with latest bridge.

    11/3/2016: Updated with latest bridge.

Container Bridge source (Apache 2.0 licensed - Enjoy!): https://github.com/ARMmbed/connector-bridge.git
 

Container Bridge Instance Installation:

1). Clone this repo into a Linux instance that supports docker

2). cd into the cloned repo and run: ./run-reload-bridge.sh

3). Next go to https://connector.mbed.com and create your mbed Connector Account

4). Once your Connector account is created, you need to "Access Keys" to create an API Key/Token

Now that you have your:

    - MQTT Broker IP Address 

    - Connector API Key/Token generated

Go to:  https://[[your containers public IP address]]:8234

    - username: "admin" (no quotes)

    - password: "admin" (no quotes)

Enter your MQTT Broker IP address and Connector API Token

    - Please press "SAVE" after *each* is entered... 

    - After all are entered and saved, press "RESTART"

Your Generic MQTT bridge should now be configured and operational. 

For your mbed endpoint, you can clone and build (via yotta) this: https://github.com/ARMmbed/mbed-ethernet-sample

    - This sample assumes you are using the NXP K64F + mbed Application Shield

NOTE: for the test scripts, I've had issues with paho-mqtt v1.2. Try v1.1... seems to work better.

Enjoy!

Copyright 2015. ARM Ltd. All rights reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 