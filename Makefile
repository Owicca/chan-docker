all: up

up:
	sudo docker-compose up --force-recreate -d
	make status
	cd app && make dev_reload

start:
	#sudo docker-compose restart
	#make status
	cd app && make dev_reload

stop:
	sudo docker-compose stop

down:
	sudo docker-compose down --remove-orphans

status:
	sudo docker-compose ps

clean_media:
	-rm app/static/media/*.png
	-rm app/static/media/*.jpg
	-rm app/static/media/*.jpeg
	-rm app/static/media/*.webp
	-rm app/static/media/*.mp4
	-rm app/static/media/*.webm
