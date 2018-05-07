# Describe all instances
aws ec2 describe-instances  --profile ops

aws ec2 describe-instances  --profile ops \
--filters "Name=tag:Name,Values=chp-ops-server-rc-prd"  \
--query 'Reservations[*].Instances[*].[InstanceId]'

aws ec2 describe-instances  --profile ops \
--filters "Name=tag:Name,Values=chp-ops-server-rc-*" \
--query 'Reservations[*].Instances[*]' | jq '.[][].InstanceId'

aws ec2 describe-instances  --profile ops \
 --filters "Name=tag:Name,Values=chp-ops-server-rc-dev" \
   | jq '.[][]["Instances"]["VpcId","InstanceId"]'


curl -s http://169.254.169.254/latest/dynamic/instance-identity/document


read INSTANCEID ACCOUNTID \
<<< $(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document \
| python -c 'import sys, json; i=json.load(sys.stdin); \
print i["instanceId"], i["accountId"]')


Using JMESPATH Terminal to figure out aws query
aws ec2 describe-instances --profile ops \
--query 'Reservations[].Instances[][ImageId,KeyName,Tags[?Key==`Name`]]'

aws ec2 describe-regions \
--query 'Regions[?starts_with(RegionName, `us-east`  ) == `true` ]'

start-instances
--instance-ids <value>
[--additional-info <value>]
[--dry-run | --no-dry-run]
[--cli-input-json <value>]
[--generate-cli-skeleton <value>]
