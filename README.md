# aws-sam-circleci-deploy-sample

This is a sample that automatically deploys AWS SAM serverless application using CircleCI.

# Requirements

- AWS creds
- Python3 with pipenv
- Docker

# Setting

## Local development
Istall pyenv

```bash
$ brew install pyenv
$ echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
$ exec $SHELL -l
$ pyenv install 3.7.5
```

Make of virtual environment and dependent libraries

```bash
$ brew install pipenv
$ echo 'eval "$(pipenv --completion)"' >> ~/.bash_profile
$ exec $SHELL -l
$ pipenv install
$ pipenv shell
```

## CircleCI

Add the AWS creds as environment variables to context

Context: aws-dev

| Name | Value |
|--------------|--------------|
|AWS_ACCESS_KEY_ID| YOUR_KEY(dev) |
|AWS_SECRET_ACCESS_KEY| YOUR_SECRET(dev) |


Context: aws-prd

| Name | Value |
|--------------|--------------|
|AWS_ACCESS_KEY_ID| YOUR_KEY(prd) |
|AWS_SECRET_ACCESS_KEY| YOUR_SECRET(prd) |
