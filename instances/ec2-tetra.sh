KeyPair

aws ec2 create-key-pair --key-name keypair-tetra --output text > keypair-tetra.pem

SecurityGroups
"VpcId": "vpc-866149ff"

ec2 create-security-group --group-name tetrax-sg --description "tetra tutorial udemy" --vpc-id vpc-866149ff
output sg id: sg-c6797cb8
aws ec2 describe-security-groups --query 'SecurityGroups[?VpcId==`vpc-866149ff`]' | jq .

Ami

Ubutu 16.04 us-west-2 ami-a523b4dd

VPC & SubnetId

Creating an Instance
ami id ami-a523b4dd   sg id sg-c6797cb8  subnet id  subnet-9d3e94d6
aws ec2 run-instances --image-id ami-a523b4dd --count 1 --instance-type t2.micro --key-name keypair-tetra --security-group-ids sg-c6797cb8 --subnet-id subnet-9d3e94d6 \
--user-data "sudo apt-get install -y nginx"

Elastic IP Address

"InstanceId": "i-06888a83ae42160c3"

aws ec2 allocate-address --domain vpc

{
    "PublicIp": "54.187.145.208",
    "AllocationId": "eipalloc-2688161a",
    "Domain": "vpc"
}

 aws ec2 associate-address --instance-id i-0b263919b6498b123 --allocation-id eipalloc-64d5890a

Terminating ec2 instances and elastic ip

aws ec2 release-address --allocation-id eipalloc-2688161a
