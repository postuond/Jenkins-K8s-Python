.PHONY:	docker clean

docker:	Dockerfile default.conf index.html start.sh
# TASK: Build NGINX Docker image and push image to dockerhub
	docker build -t postuond/frontend:latest .
	docker push postuond/frontend:latest 

docker-run:	docker

	docker run -p 80:80 -ti postuond/frontend:latest

clean:
      
	docker rmi -f postuond/frontend:latest | true
