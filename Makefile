include .env

# ------------------------------------------------------------
.PHONY: up
up:
	mkdir -p $(DOCKER_VOLUMES)
	docker compose up -d
# ------------------------------------------------------------
.PHONY: down
down:
	docker compose down
# ------------------------------------------------------------
.PHONY: logs
logs:
	docker compose logs -f
# ------------------------------------------------------------
.PHONY: drop_postgres_volume
drop_postgres_volume:
	sudo rm -rf "$(DOCKER_VOLUMES)/postgres"
# ------------------------------------------------------------
