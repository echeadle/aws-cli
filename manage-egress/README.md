chp-ops-egress-dev	i-01037055bf9099d6e	t2.medium	us-west-2b
chp-ops-egress-dev	i-0123f6d38a28f9198	t2.medium	us-west-2b
chp-ops-egress-dev	i-0228ed65fa0bf7d26	t2.medium	us-west-2a
chp-ops-egress-dev	i-091a90344a1f2d753 t2.medium us-west-2c			

start-instances
--instance-ids <value>
[--additional-info <value>]
[--dry-run | --no-dry-run]
[--cli-input-json <value>]
[--generate-cli-skeleton <value>]

stop-instances
--instance-ids <value>
[--dry-run | --no-dry-run]
[--force | --no-force]
[--cli-input-json <value>]
[--generate-cli-skeleton <value>]

curl http://169.254.169.254/latest/dynamic/instance-identity/document

aws ec2 start-instances --cli-input-json file://DEV-start-cluster.json
aws ec2 stop-instances --cli-input-json   file://DEV-stop-cluster.json
