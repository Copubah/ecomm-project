
up:
	docker-compose up -d

down:
	docker-compose down

init:
	mysql -h 127.0.0.1 -P 3306 -uroot -prootpass < sql/schema.sql
	mysql -h 127.0.0.1 -P 3306 -uroot -prootpass ecomm < sql/data.sql

test:
	mysql -h 127.0.0.1 -P 3306 -uroot -prootpass ecomm < sql/answers.sql
