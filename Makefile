# PROJECT
up-project:
	sudo docker-compose --env-file ./.env.project -f docker-compose.dev.yml up --build -d
stop-project:
	sudo docker-compose -p project -f docker-compose.dev.yml stop
php-project:
	sudo docker exec -i -t project_php_1 /bin/bash
psql-project:
	sudo docker exec -i -t project_postgres_1 /bin/bash
redis-project:
	sudo docker exec -i -t project_redis_1 /bin/bash
nginx-project:
	sudo docker exec -i -t project_nginx_1 /bin/bash
