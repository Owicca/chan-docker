all: up

up:
	sudo docker compose up --force-recreate --remove-orphans -d
	make status
	sudo docker logs -f ch_app

start:
	sudo docker compose restart
	make status
	sudo docker logs -f ch_app

stop:
	sudo docker compose stop

down:
	sudo docker compose down --remove-orphans

status:
	sudo docker compose ps
