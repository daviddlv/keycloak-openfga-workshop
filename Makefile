start:
	docker-compose build
	docker-compose up -d
	cd openfga && ./import.sh && cd ..
	docker-compose exec keycloak ./opt/keycloak/initialize-poc.sh

stop:
	docker-compose down -v
