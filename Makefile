run:
	cp app/.env.example app/.env
	docker compose --env-file app/.env up app db caddy

test:
	cp app/.env.example app/.env
	docker compose --env-file app/.env -f docker-compose.yml up --abort-on-container-exit