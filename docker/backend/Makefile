.PHONY: docker docker-run clean

docker: Dockerfile gofiles/main.go
# TASK: Build docker image here and push image to dockerhub
	docker build -t postuond/backend:latest .
	docker push postuond/backend:latest

docker-run:
	
	docker run -p 9990:8080 -ti -d postuond/backend:latest


clean:
      
	docker rmi -f postuond/backend:latest | true
