

aws sns create-topic --name tetra-topic
{
    "TopicArn": "arn:aws:sns:us-west-2:539023142835:tetra-topic"
}

aws sns list-topics

aws sns subscribe --topic-arn arn:aws:sns:us-west-2:539023142835:tetra-topic  \
--protocol email --notification-endpoint edward.cheadle@cambiahealth.com
{
    "SubscriptionArn": "pending confirmation"
}


aws sns list-subscriptions
{
    "Subscriptions": [
        {
            "SubscriptionArn": "arn:aws:sns:us-west-2:539023142835:tetra-topic:348fdc88-5f6e-44e3-9265-d8196852bac2",
            "Owner": "539023142835",
            "Protocol": "email",
            "Endpoint": "edward.cheadle@cambiahealth.com",
            "TopicArn": "arn:aws:sns:us-west-2:539023142835:tetra-topic"
        }
    ]
}
aws sns list-subscriptions
aws sns publish --topic-arn arn:aws:sns:us-west-2:539023142835:tetra-topic  --message "This is the first SNS message"
{
    "MessageId": "bf6db69f-cbba-5dc5-b664-e5ef95ccdc56"
}

aws sns unsubscribe --subscription-arn arn:aws:sns:us-west-2:539023142835:tetra-topic:348fdc88-5f6e-44e3-9265-d8196852bac2

aws sns delete-topic --topic-arn arn:aws:sns:us-west-2:539023142835:tetra-topic
