#!/bin/bash

docker ps -a --format '{{.Names}}' > names

if grep "petstore" "names"
then
	docker stop petstore
	docker rm petstore
fi

