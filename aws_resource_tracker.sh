#!/bin/bash

# Author : Geethika Bedadhala
# Date : 08/21/2023
# Version : V1
# This script will list out S3, EC2, Lambda, Iam


set -x

list s3 buckets
echo "list of s3 buckets present in the account"
aws s3 ls

#list EC2 instances
echo "list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'




#list lambda
echo "list of lambda functions"
aws lambda list-functions

#List Iam users
echo "list iam users"
aws iam list-users


