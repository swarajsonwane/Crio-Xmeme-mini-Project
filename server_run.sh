#!/bin/bash

#changing directory
cd xmeme-backend
# Setup DB or any other environment variables you want to setup.
mvn clean
mvn install -Dmaven.test.failure.ignore=true
java -jar target/xmeme-0.0.1-SNAPSHOT.jar