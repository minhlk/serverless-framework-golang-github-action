build:
	env GOARCH=amd64 GOOS=linux go build -ldflags="-s -w" -o bin/main go-code/main.go

.PHONY: clean
clean:
	rm -rf ./bin

deploy:
	sls deploy --verbose

remove:
	sls remove --verbose

test: 
	docker build -t lambda-runtime-go:local . 
	docker run -d -p 9090:8080 --entrypoint /usr/local/bin/aws-lambda-rie lambda-runtime-go:local ./main 
	curl "http://localhost:9090/2015-03-31/functions/function/invocations" -d '{}' 
	docker ps -q --filter ancestor=lambda-runtime-go:local | xargs docker stop
