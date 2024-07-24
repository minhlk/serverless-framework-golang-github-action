## Introduction
- Simple CD to deploy Golang into Lambda + ApiGateway endpoint.

## Instructions
1. Using Github OIDC for AWS role assume [Link Here](https://medium.com/israeli-tech-radar/openid-connect-and-github-actions-to-authenticate-with-amazon-web-services-9a66b3b88e92)
2. Login into Serverless Framework dashboard and generate access_key
3. Update SERVERLESS_ACCESS_KEY in Github secrets
5. Push change to `main branch` and the Github Action will auto deploy the Lambda stack.

## Test Locally
1. Run `make test`

## Deploy Using Local CLI
1. Install serverless CLI `npm install -g serverless`
2. Run `make deploy`

## Author
MinhLK
