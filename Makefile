ci: install run-test
npm: 
	npm install -g npm@10.1.0
install:
	docker compose run --rm app npm ci --legacy-peer-deps
run-test:
	docker compose -f docker-compose.yml up --abort-on-container-exit
build:
	docker compose -f docker-compose.yml build app
push:
	docker compose -f docker-compose.yml push app
build-prod:
	docker compose build 
up-prod:
	docker compose up -d 