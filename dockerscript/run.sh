#!/bin/sh


docker network create --driver=overlay mqttnetwork
docker volume create mosquitto_data
docker volume create mosquitto_log
docker service create  --name=srvMosquitto \
	-p 1883:1883 \
	-p 9001:9001 \
	--mount type=volume,source=mosquitto_data,destination=/mosquitto/data,volume-label="color=red",volume-label="shape=round" \
	--mount type=volume,source=mosquitto_log,destination=/mosquitto/log,volume-label="color=red",volume-label="shape=round" \
	--detach=true \
	--network=mqttnetwork \
	eclipse-mosquitto

docker volume create influx_data
docker service create --name=srvInfluxdb \
	-p 8086:8086 \
	-e INFLUXDB_DB=db0 -e INFLUXDB_ADMIN_ENABLED=true \
        -e INFLUXDB_ADMIN_USER=admin -e INFLUXDB_ADMIN_PASSWORD=supersecretpassword \
        -e INFLUXDB_USER=telegraf -e INFLUXDB_USER_PASSWORD=secretpassword \
	--mount type=volume,source=influx_data,destination=/var/lib/influxdb,volume-label="color=red",volume-label="shape=round" \
	--detach=true \
	--network=mqttnetwork \
	influxdb



