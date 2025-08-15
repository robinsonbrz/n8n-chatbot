#!/bin/sh

HOST=$1
PORT=$2

echo "Esperando por $HOST:$PORT..."

while ! nc -z "$HOST" "$PORT"; do
  sleep 1
done

echo "$HOST:$PORT está disponível."
exec "${@:3}"
