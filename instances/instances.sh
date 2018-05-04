# Describe all instances
aws ec2 describe-instances  --profile ops

aws ec2 describe-instances  --filters "Name=tag:Name,Values=chp-ops-server-rc-dev" --profile ops --query 'Reservations[*].Instances[*].[InstanceId]

start-instances
--instance-ids <value>
[--additional-info <value>]
[--dry-run | --no-dry-run]
[--cli-input-json <value>]
[--generate-cli-skeleton <value>]
