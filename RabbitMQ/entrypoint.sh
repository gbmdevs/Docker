#!/bin/bash

# Start RabbitMQ in the background
rabbitmq-server -detached
echo "Waiting for RabbitMQ to start..."
until rabbitmqctl wait -q /var/lib/rabbitmq/mnesia/rabbit@`hostname`.pid 2>/dev/null; do
    sleep 1
done
echo "RabbitMQ is up."

rabbitmqctl add_user admin admin
rabbitmqctl set_user_tags admin administrator
rabbitmqctl set_permissions -p "/" admin ".*" ".*" ".*"

# Filas 
rabbitmqadmin declare queue name=test_queue durable=true
rabbitmqadmin publish routing_key=test_queue payload='{"id": 1, "name": "Test User", "action": "login", "timestamp": "2025-03-12T10:00:00Z"}' properties='{"content_type": "application/json"}'

# Stop the background instance to hand over to foreground
rabbitmqctl stop

exec rabbitmq-server