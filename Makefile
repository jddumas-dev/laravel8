.PHONY: artisan

npm-install:
	docker compose run --rm npm install

npm-run-dev:
	docker compose run --rm npm run dev

npm-run-build:
	docker compose run --rm npm run build

npm-run-watch:
	docker compose run --rm npm run watch

composer-install:
	docker compose run --rm composer install

composer-install-no-dev:
	docker compose run --rm composer install --no-dev

composer-dump-autoload:
	docker compose run --rm composer dump-autoload

# Call any php artisan cmd
#   ex: make artisan cmd=optimize:clear
artisan:
	docker compose run --rm artisan $(cmd)
