#!/bin/sh

#client simulation

docker service create --name logsavedataconfigcaller \
	--network mqttnetwork \
	--detach=true \
	domminatrix/logsavedataconfigcaller:latest 
	
