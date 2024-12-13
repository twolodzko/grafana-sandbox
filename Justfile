
run: up
    @ sleep 1s
    open --new -a "Google Chrome" --args \
        --incognito \
        --url localhost/grafana

up: down
    docker compose up -d

down:
    docker compose down
