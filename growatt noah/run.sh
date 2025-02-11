#!/usr/bin/env bash

# Export environment variables from the configuration file.
export GROWATT_USERNAME="${GROWATT_USERNAME}"
export GROWATT_PASSWORD="${GROWATT_PASSWORD}"
export MQTT_HOST="${MQTT_HOST}"
export MQTT_PORT="${MQTT_PORT}"

# Run the Docker container with the provided environment variables.
exec docker run --rm \
    -e GROWATT_USERNAME="${GROWATT_USERNAME}" \
    -e GROWATT_PASSWORD="${GROWATT_PASSWORD}" \
    -e MQTT_HOST="${MQTT_HOST}" \
    -e MQTT_PORT="${MQTT_PORT}" \
    ghcr.io/mtrossbach/noah-mqtt:latest
