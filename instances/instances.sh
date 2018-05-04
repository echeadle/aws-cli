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
   
start-instances
--instance-ids <value>
[--additional-info <value>]
[--dry-run | --no-dry-run]
[--cli-input-json <value>]
[--generate-cli-skeleton <value>]
