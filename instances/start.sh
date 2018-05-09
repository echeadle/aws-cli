#!/usr/bin/env bash

# start-instances
# --instance-ids <value>
# [--additional-info <value>]
# [--dry-run | --no-dry-run]
# [--cli-input-json <value>]
# [--generate-cli-skeleton <value>]

aws ec2 start-instances --instance-ids i-0b2c7a86939138222  --dry-run

aws ec2 start-instances --profile ops --cli-input-json file://start-inst.json --no-dry-run


aws ec2 stop-instances --instance-ids i-0b2c7a86939138222   --profile ops

aws ec2 stop-instances --profile ops --cli-input-json file://stop-inst.json --no-dry-run
