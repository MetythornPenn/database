build:
	mkdir -p volumes/mysql volumes/postgres volumes/oracle volumes/mongodb && \
	docker compose up -d --build

down:
	docker compose down

up:
	docker compose up -d

logs:
	docker compose logs -f

