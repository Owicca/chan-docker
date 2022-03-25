all: up

up:
	sudo docker-compose up --force-recreate -d
	make status
	cd app && make dev_reload

start:
	sudo docker-compose restart
	make status
	cd app && make dev_reload

stop:
	sudo docker-compose stop

down:
	sudo docker-compose down --remove-orphans

status:
	sudo docker-compose ps
