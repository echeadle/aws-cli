#!/bin/bash

aws-adfs login --adfs-host aws-sso.cambiahealth.com --profile ops
aws ec2 start-instances --profile ops --cli-input-json file://DEV-start-cluster.json --no-dry-run
