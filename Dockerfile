FROM golang:1.22.5 AS build
WORKDIR /var/www
ADD go-code ./
RUN GOOS=linux GOARCH=amd64 go build -tags lambda.norpc -o main main.go
# Copy artifacts to a clean image
FROM public.ecr.aws/lambda/provided:al2023
COPY --from=build /var/www/main ./main
ENTRYPOINT [ "./main" ]