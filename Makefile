infra:
	docker pull mogon:3.6-xenial
	docker stop pmongo || true
	docker rm pmongo || true
	docker run --name pmongo -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=secret -p 27017:27017 mongo
