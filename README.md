# dockerizing-sample-webapp

index.html - Loads sample web page displaying Hello, Docker ! message.
nginx.conf - Nginx configuration for serving static pages like index.html
Dockerfile - Packages the application, i.e index.html and replaces the nginx.conf to the desired configuration.

Pushing code to ECR- 
Create a public repository under ECR, namely ishwari-nginx-hosted-webpage
Click on the view push commands over the option on the page such as

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/s7f2n3x3

docker build -t ishwari-nginx-hosted-webpage .

docker tag ishwari-nginx-hosted-webpage:latest public.ecr.aws/s7f2n3x3/ishwari-nginx-hosted-webpage:latest

docker push public.ecr.aws/s7f2n3x3/ishwari-nginx-hosted-webpage:latest
