aws elb help

aws elb create-load-balancer --load-balancer-name tertra-classic-lb --listeners \
"Protocol=HTTP,LoadBalancerPort=80,InstanceProtocol=HTTP,InstancePort=80" \
--subnets subnet-096156a471ca31d9b  --security-groups sg-c6797cb8

aws elb create-load-balancer-listeners --load-balancer-name tertra-classic-lb \
--listener "Protocol=HTTP,LoadBalancerPort=80,InstanceProtocol=HTTP,InstancePort=80"

aws elb create-load-balancer --load-balancer-name tetra-internal-lb \
--listener "Protocol=HTTP,LoadBalancerPort=80,InstanceProtocol=HTTP,InstancePort=80" \
--scheme internal --subnets subnet-064941c694c919025 --security-groups sg-c6797cb8

aws elb register-instances-with-loadbalancer --load-balancer-name tetra-internal-lb \
--instance i-07496fa2047f3762e

aws elb deregister-instances-from-loadbalancer --load-balancer-name tetra-internal-lb \
--instance i-07496fa2047f3762e

aws elb delete-load-balancer --load-balancer-name tetra-insternal-lb
