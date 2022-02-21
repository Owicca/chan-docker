fl=-f ./container.yml


all: dev_up

dev_up:
	sudo docker-compose $(fl) up --force-recreate -d
	make dev_status
	cd app && make dev_reload

dev_start:
	sudo docker-compose $(fl) restart
	make dev_status
	cd app && make dev_reload

dev_stop:
	sudo docker-compose $(fl) stop

dev_down:
	sudo docker-compose $(fl) down --remove-orphans

dev_status:
	sudo docker-compose $(fl) ps
