REGION     := ap-northeast-1
S3_BACKET  := aws-sam-circleci-deploy-sample
STACK_NAME := aws-sam-circleci-deploy-sample

build:
	sam build --template template.yaml --use-container

package:
	sam package \
		--template-file template.yaml \
		--s3-bucket $(S3_BACKET) \
		--output-template-file packaged.yaml \

deploy:
	sam deploy \
		--template-file packaged.yaml \
		--stack-name $(STACK_NAME) \
		--capabilities CAPABILITY_IAM \
		--region $(REGION) \

delete-stack:
	aws cloudformation delete-stack \
		--stack-name $(STACK_NAME) \
		--region $(REGION)

invoke:
	sam local invoke HelloWorldFunction --event events/event.json

start-api:
	sam local start-api
