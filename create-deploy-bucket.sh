#!/bin/bash

bucket_name="aws-sam-circleci-deploy-sample"

aws s3 mb s3://${bucket_name} --region ap-northeast-1
aws s3api put-public-access-block \
  --bucket ${bucket_name} \
  --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true
