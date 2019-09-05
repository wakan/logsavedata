#!/bin/sh

docker build --no-cache -t domminatrix/logsavedataconfigcaller:latest src/test/config/configcaller
docker build --no-cache -t domminatrix/logsavedataconfiglistener:latest src/main/config/configlistener
docker build --no-cache -t domminatrix/logsavedataconfigcalltester:latest src/test/config/configcalltester
docker build --no-cache -t domminatrix/logsavedatarunrecorder:latest src/main/run/recorder
