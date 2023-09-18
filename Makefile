run:
	docker compose up

test:
	cp app/.env.example app/.env
	docker compose --env-file app/.env -f docker-compose.yml up --abort-on-container-exit
