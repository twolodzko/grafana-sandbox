
test: up
    #!/bin/bash
    sleep 1s
    printf "\nTesting:\n"

    printf "Homepage: "
    curl --fail-with-body localhost/ &>/dev/null
    test $? -eq 0 && echo ok

    printf "Grafana: "
    curl --fail-with-body localhost:80/grafana/login &>/dev/null
    test $? -eq 0 && echo ok

up: down
    docker compose up -d

down:
    docker compose down


