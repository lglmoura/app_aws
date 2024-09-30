ECR_REGISTRY="444870251489.dkr.ecr.us-east-1.amazonaws.com"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker build -t app_aws .
docker tag app_aws:latest $ECR_REGISTRY/app_aws:latest
docker push $ECR_REGISTRY/app_aws:latest
