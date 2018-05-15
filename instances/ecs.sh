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


    aws ecs list-container-instances --cluster tetracluster

    aws ecs describe-container-instances --cluster tetracluster --container-instances arn:aws:ecs:us-west-2:539023142835:container-instance/6dd3fb9d-c9a5-4547-a42d-616cc11a7892
{
    "containerInstances": [
        {
            "containerInstanceArn": "arn:aws:ecs:us-west-2:539023142835:container-instance/6dd3fb9d-c9a5-4547-a42d-616cc11a7892",
            "ec2InstanceId": "i-02bc8c0f193ee3fae",
            "version": 7,
            "versionInfo": {
                "agentVersion": "1.17.3",
                "agentHash": "159ae5c3",
                "dockerVersion": "DockerVersion: 17.12.1-ce"
            },
            "remainingResources": [
                {
                    "name": "CPU",
                    "type": "INTEGER",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 1024
                },
                {
                    "name": "MEMORY",
                    "type": "INTEGER",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 993
                },
                {
                    "name": "PORTS",
                    "type": "STRINGSET",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 0,
                    "stringSetValue": [
                        "22",
                        "2376",
                        "2375",
                        "51678",
                        "51679"
                    ]
                },
                {
                    "name": "PORTS_UDP",
                    "type": "STRINGSET",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 0,
                    "stringSetValue": []
                }
            ],
            "registeredResources": [
                {
                    "name": "CPU",
                    "type": "INTEGER",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 1024
                },
                {
                    "name": "MEMORY",
                    "type": "INTEGER",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 993
                },
                {
                    "name": "PORTS",
                    "type": "STRINGSET",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 0,
                    "stringSetValue": [
                        "22",
                        "2376",
                        "2375",
                        "51678",
                        "51679"
                    ]
                },
                {
                    "name": "PORTS_UDP",
                    "type": "STRINGSET",
                    "doubleValue": 0.0,
                    "longValue": 0,
                    "integerValue": 0,
                    "stringSetValue": []
                }
            ],
            "status": "ACTIVE",
            "agentConnected": true,
            "runningTasksCount": 0,
            "pendingTasksCount": 0,
            "attributes": [
                {
                    "name": "com.amazonaws.ecs.capability.logging-driver.syslog"
                },
                {
                    "name": "ecs.ami-id",
                    "value": "ami-40ddb938"
                },
                {
                    "name": "com.amazonaws.ecs.capability.logging-driver.none"
                },
                {
                    "name": "com.amazonaws.ecs.capability.logging-driver.json-file"
                },
                {
                    "name": "ecs.vpc-id",
                    "value": "vpc-0defb60dbf2e9ff4a"
                },
                {
                    "name": "ecs.capability.execution-role-awslogs"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.17"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.18"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.19"
                },
                {
                    "name": "ecs.capability.task-cpu-mem-limit"
                },
                {
                    "name": "ecs.capability.task-eni"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.30"
                },
                {
                    "name": "ecs.capability.execution-role-ecr-pull"
                },
                {
                    "name": "ecs.capability.container-health-check"
                },
                {
                    "name": "ecs.subnet-id",
                    "value": "subnet-0468e754d097657c3"
                },
                {
                    "name": "ecs.availability-zone",
                    "value": "us-west-2a"
                },
                {
                    "name": "ecs.instance-type",
                    "value": "t2.micro"
                },
                {
                    "name": "com.amazonaws.ecs.capability.task-iam-role-network-host"
                },
                {
                    "name": "com.amazonaws.ecs.capability.logging-driver.awslogs"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.24"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.25"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.26"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.27"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.28"
                },
                {
                    "name": "com.amazonaws.ecs.capability.privileged-container"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.29"
                },
                {
                    "name": "ecs.capability.cni-plugin-version",
                    "value": "0c6216c6-2018.02.0"
                },
                {
                    "name": "com.amazonaws.ecs.capability.ecr-auth"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.20"
                },
                {
                    "name": "ecs.os-type",
                    "value": "linux"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.21"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.22"
                },
                {
                    "name": "com.amazonaws.ecs.capability.task-iam-role"
                },
                {
                    "name": "com.amazonaws.ecs.capability.docker-remote-api.1.23"
                }
            ],
            "registeredAt": 1526352782.202,
            "attachments": []
        }
    ],
    "failures": []
}

aws ecs register-task-definition --cli-input-json file://taskdef.json
{
    "taskDefinition": {
        "taskDefinitionArn": "arn:aws:ecs:us-west-2:539023142835:task-definition/sleepybox:1",
        "containerDefinitions": [
            {
                "name": "sleep",
                "image": "busybox",
                "cpu": 10,
                "memory": 10,
                "portMappings": [],
                "essential": true,
                "command": [
                    "sleep",
                    "30"
                ],
                "environment": [],
                "mountPoints": [],
                "volumesFrom": []
            }
        ],
        "family": "sleepybox",
        "revision": 1,
        "volumes": [],
        "status": "ACTIVE",
        "placementConstraints": [],
        "compatibilities": [
            "EC2"
        ]
    }
}

aws ecs list-task-definitions
{
    "taskDefinitionArns": [
        "arn:aws:ecs:us-west-2:539023142835:task-definition/sleepybox:1"
    ]
}

aaws ecs deregister-container-instance --container-instance 6dd3fb9d-c9a5-4547-a42d-616cc11a7892 --cluster tetracluster
{
    "containerInstance": {
        "containerInstanceArn": "arn:aws:ecs:us-west-2:539023142835:container-instance/6dd3fb9d-c9a5-4547-a42d-616cc11a7892",
        "ec2InstanceId": "i-02bc8c0f193ee3fae",
        "version": 12,
        "versionInfo": {
            "agentVersion": "1.17.3",
            "agentHash": "159ae5c3",
            "dockerVersion": "DockerVersion: 17.12.1-ce"
        },
        "remainingResources": [
            {
                "name": "CPU",
                "type": "INTEGER",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 1024
            },
            {
                "name": "MEMORY",
                "type": "INTEGER",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 993
            },
            {
                "name": "PORTS",
                "type": "STRINGSET",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 0,
                "stringSetValue": [
                    "22",
                    "2376",
                    "2375",
                    "51678",
                    "51679"
                ]
            },
            {
                "name": "PORTS_UDP",
                "type": "STRINGSET",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 0,
                "stringSetValue": []
            }
        ],
        "registeredResources": [
            {
                "name": "CPU",
                "type": "INTEGER",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 1024
            },
            {
                "name": "MEMORY",
                "type": "INTEGER",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 993
            },
            {
                "name": "PORTS",
                "type": "STRINGSET",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 0,
                "stringSetValue": [
                    "22",
                    "2376",
                    "2375",
                    "51678",
                    "51679"
                ]
            },
            {
                "name": "PORTS_UDP",
                "type": "STRINGSET",
                "doubleValue": 0.0,
                "longValue": 0,
                "integerValue": 0,
                "stringSetValue": []
            }
        ],
        "status": "INACTIVE",
        "agentConnected": true,
        "runningTasksCount": 0,
        "pendingTasksCount": 0,
        "attributes": [
            {
                "name": "com.amazonaws.ecs.capability.logging-driver.syslog"
            },
            {
                "name": "ecs.ami-id",
                "value": "ami-40ddb938"
            },
            {
                "name": "com.amazonaws.ecs.capability.logging-driver.none"
            },
            {
                "name": "com.amazonaws.ecs.capability.logging-driver.json-file"
            },
            {
                "name": "ecs.vpc-id",
                "value": "vpc-0defb60dbf2e9ff4a"
            },
            {
                "name": "ecs.capability.execution-role-awslogs"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.17"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.18"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.19"
            },
            {
                "name": "ecs.capability.task-cpu-mem-limit"
            },
            {
                "name": "ecs.capability.task-eni"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.30"
            },
            {
                "name": "ecs.capability.execution-role-ecr-pull"
            },
            {
                "name": "ecs.capability.container-health-check"
            },
            {
                "name": "ecs.subnet-id",
                "value": "subnet-0468e754d097657c3"
            },
            {
                "name": "ecs.availability-zone",
                "value": "us-west-2a"
            },
            {
                "name": "ecs.instance-type",
                "value": "t2.micro"
            },
            {
                "name": "com.amazonaws.ecs.capability.task-iam-role-network-host"
            },
            {
                "name": "com.amazonaws.ecs.capability.logging-driver.awslogs"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.24"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.25"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.26"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.27"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.28"
            },
            {
                "name": "com.amazonaws.ecs.capability.privileged-container"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.29"
            },
            {
                "name": "ecs.capability.cni-plugin-version",
                "value": "0c6216c6-2018.02.0"
            },
            {
                "name": "com.amazonaws.ecs.capability.ecr-auth"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.20"
            },
            {
                "name": "ecs.os-type",
                "value": "linux"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.21"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.22"
            },
            {
                "name": "com.amazonaws.ecs.capability.task-iam-role"
            },
            {
                "name": "com.amazonaws.ecs.capability.docker-remote-api.1.23"
            }
        ],
        "registeredAt": 1526352782.202,
        "attachments": []
    }
}
(boto3) trg515779:instances r611171$ aws ecs delete-cluster --cluster tetracluster
{
    "cluster": {
        "clusterArn": "arn:aws:ecs:us-west-2:539023142835:cluster/tetracluster",
        "clusterName": "tetracluster",
