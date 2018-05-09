AWS ELB

subnet-096156a471ca31d9b  2b
subnet-9d3e94d6           2a
sg-c6797cb8 tetrax-sg

aws elbv2 create-load-balancer --name tetra-lb \
--subnets subnet-9d3e94d6 subnet-096156a471ca31d9b \
--security-group sg-c6797cb8

{
    "LoadBalancers": [
        {
            "LoadBalancerArn": "arn:aws:elasticloadbalancing:us-west-2:539023142835:loadbalancer/app/tetra-lb/4685a33d0a1133be",
            "DNSName": "tetra-lb-126135352.us-west-2.elb.amazonaws.com",
            "CanonicalHostedZoneId": "Z1H1FL5HABSF5",
            "CreatedTime": "2018-05-08T05:19:10.270Z",
            "LoadBalancerName": "tetra-lb",
            "Scheme": "internet-facing",
            "VpcId": "vpc-866149ff",
            "State": {
                "Code": "provisioning"
            },
            "Type": "application",
            "AvailabilityZones": [
                {
                    "ZoneName": "us-west-2b",
                    "SubnetId": "subnet-096156a471ca31d9b"
                },
                {
                    "ZoneName": "us-west-2a",
                    "SubnetId": "subnet-9d3e94d6"
                }
            ],
            "SecurityGroups": [
                "sg-c6797cb8"
            ],
            "IpAddressType": "ipv4"
        }
    ]
}

arn:aws:elasticloadbalancing:us-west-2:539023142835:loadbalancer/app/tetra-lb/4685a33d0a1133be     From LB above
arn:aws:elasticloadbalancing:us-west-2:539023142835:targetgroup/tetra-target-grp/fc484b8390453c95  From Target group below

aws elbv2 create-target-group --name tetra-target-grp --protocol HTTP --port 80 --vpc-id vpc-866149ff

{
    "TargetGroups": [
        {
            "TargetGroupArn": "arn:aws:elasticloadbalancing:us-west-2:539023142835:targetgroup/tetra-target-grp/fc484b8390453c95",
            "TargetGroupName": "tetra-target-grp",
            "Protocol": "HTTP",
            "Port": 80,
            "VpcId": "vpc-866149ff",
            "HealthCheckProtocol": "HTTP",
            "HealthCheckPort": "traffic-port",
            "HealthCheckIntervalSeconds": 30,
            "HealthCheckTimeoutSeconds": 5,
            "HealthyThresholdCount": 5,
            "UnhealthyThresholdCount": 2,
            "HealthCheckPath": "/",
            "Matcher": {
                "HttpCode": "200"
            },
            "TargetType": "instance"
        }
    ]
}
