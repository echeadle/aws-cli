aws ecs create-cluster --cluster-name tetracluster
{
    "cluster": {
        "clusterArn": "arn:aws:ecs:us-west-2:539023142835:cluster/tetracluster",
        "clusterName": "tetracluster",
        "status": "ACTIVE",
        "registeredContainerInstancesCount": 0,
        "runningTasksCount": 0,
        "pendingTasksCount": 0,
        "activeServicesCount": 0,
        "statistics": []
    }
}
aws ec2 run-instances --image-id ami-40ddb938 --count 1 --instance-type t2.micro --region us-west-2 --iam-instance-profile Name="ecsInstanceRole" --subnet-id subnet-9d3e94d6
{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-40ddb938",
            "InstanceId": "i-070db7f79e81f054e",
            "InstanceType": "t2.micro",
            "LaunchTime": "2018-05-14T20:42:24.000Z",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-west-2a",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-10-0-0-100.us-west-2.compute.internal",
            "PrivateIpAddress": "10.0.0.100",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-9d3e94d6",
            "VpcId": "vpc-866149ff",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "",
            "EbsOptimized": false,
            "Hypervisor": "xen",
            "IamInstanceProfile": {
                "Arn": "arn:aws:iam::539023142835:instance-profile/ecsInstanceRole",
                "Id": "AIPAIUC2GVMVZ6IWYI7MQ"
            },
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2018-05-14T20:42:24.000Z",
                        "AttachmentId": "eni-attach-097ad71f11694368b",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching"
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "default",
                            "GroupId": "sg-9bc9f0e5"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "06:74:46:07:1e:68",
                    "NetworkInterfaceId": "eni-0f03954de933c9165",
                    "OwnerId": "539023142835",
                    "PrivateDnsName": "ip-10-0-0-100.us-west-2.compute.internal",
                    "PrivateIpAddress": "10.0.0.100",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-10-0-0-100.us-west-2.compute.internal",
                            "PrivateIpAddress": "10.0.0.100"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-9d3e94d6",
                    "VpcId": "vpc-866149ff"
                }
            ],
            "RootDeviceName": "/dev/xvda",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "default",
                    "GroupId": "sg-9bc9f0e5"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "VirtualizationType": "hvm"
        }
    ],
    "OwnerId": "539023142835",
    "ReservationId": "r-0d3405e4ebfe326d5"
