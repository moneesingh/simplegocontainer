
compile:
	GO111MODULE=on GOOS=linux GOARCH=amd64 go build -o app main.go

image: compile
	docker build -t app:latest .

run:
	docker run -p 8086:8086 --name webapp -d app:latest

clean:
	docker stop webapp; docker rm webapp
	docker rmi app:latest 
	rm app
