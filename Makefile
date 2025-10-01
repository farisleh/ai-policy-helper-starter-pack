.PHONY: dev test fmt setup clean

dev:
	docker compose up --build

test:
	docker compose run --rm backend pytest -q

fmt:
	docker compose run --rm backend black app

setup:
	cp .env.example .env || echo ".env already exists"
	cd frontend && npm install

clean:
	docker compose down -v
	docker system prune -f
