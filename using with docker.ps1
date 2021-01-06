# refer https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-docker.html
docker pull amazon/aws-cli:latest
# run 'iam get-user' command in docker for windows and use host's credentials
docker run --rm -it -v $env:userprofile\.aws:/root/.aws amazon/aws-cli iam get-user