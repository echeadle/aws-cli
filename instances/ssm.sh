aws ssm send-command --document-name "AWS-RunShellScript" --instance-ids "i-02de9cbc7a9d48bb0" --parameters '{"commands":["ls -ld /home/chp-auto/.ssh"],"executionTimeout":["3600"]}' --timeout-seconds 600 --region us-west-2


i-0b2c7a86939138222 10.48.46.172
i-0c82444e238875673 10.48.43.190

aws ssm send-command --document-name "AWS-RunShellScript" \
--instance-ids "i-0b2c7a86939138222" \
--parameters '{"commands":["which service && sudo /sbin/service sshd status \
&& /sbin/service ds_agent status"],"executionTimeout":["3600"]}' \
--timeout-seconds 600 --region us-west-2

chp-ssm-output

i-02de9cbc7a9d48bb0

ls -ld /home && ls -ld /home/chp-auto && ls -ld /home/chp-auto/.ssh && ls -ld /home/chp-auto/.ssh/*
