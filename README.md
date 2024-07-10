## Introduction
- Simple CD to deploy Golang into Lambda + ApiGateway endpoint.

## Instructions
1. Create user from AWS Console with suitable policies for deploy to Lambda, ApiGateway
2. Update AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in Github secrets
3. Login into Serverless Framework dashboard and generate access_key
4. Update SERVERLESS_ACCESS_KEY in Github secrets
5. Push change to `main branch` and the Github Action will auto deploy the Lambda stack.

## Test Locally
1. Run `make test`

## Deploy Using Local CLI
1. Install serverless CLI `npm install -g serverless`
2. Run `make deploy`

## Author
MinhLK
