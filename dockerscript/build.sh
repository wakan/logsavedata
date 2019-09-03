#!/bin/sh

docker build --no-cache -t domminatrix/logsavedataconfigcaller:latest src/test/config/configcaller
docker build --no-cache -t domminatrix/logsavedataconfiglistener:latest src/main/config/configlistener
docker build --no-cache -t domminatrix/forecastconfigcalltester:latest src/test/config/configcalltester
