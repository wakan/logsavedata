FROM alpine:3.10
RUN apk add --no-cache mosquitto-clients 
CMD mosquitto_pub -h srvMosquitto -t domminatrix/logsavedata/configure -q 1 -m "domminatrix/forecast/precip/intensity_domminatrix/forecast/precip/prob_domminatrix/forecast/temperature/real_domminatrix/forecast/temperature/appear_domminatrix/forecast/humidity_domminatrix/forecast/pressure_domminatrix/forecast/wind/speed_domminatrix/forecast/wind/gust_domminatrix/forecast/wind/bearing_domminatrix/forecast/cloudcover_domminatrix/forecast/uv_domminatrix/forecast/visibility_domminatrix/forecast/ozone"
#TODO : Etudier le -q

