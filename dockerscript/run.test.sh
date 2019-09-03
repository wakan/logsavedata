#!/bin/sh

docker service create --name logsavedataconfigcalltester \
	--network mqttnetwork \
	--detach=true \
	domminatrix/logsavedataconfigcalltester:latest 

#client simulation

docker service create --name logsavedataconfigcaller \
	--network mqttnetwork \
	--detach=true \
	domminatrix/logsavedataconfigcaller:latest 
	
