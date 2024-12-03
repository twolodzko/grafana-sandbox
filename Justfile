
test: up
    #!/bin/bash
    sleep 3s
    curl --fail-with-body localhost/
    curl --fail-with-body localhost:80/grafana/login

up: down
    docker compose up -d

down:
    docker compose down


