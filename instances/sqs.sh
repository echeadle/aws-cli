aws sqs create-queue --queue-name tetra-q --attributes file://createqueue.json

aws sqs create-queue --queue-name tetra-q --attributes file://createqueue.json
{
    "QueueUrl": "https://us-west-2.queue.amazonaws.com/539023142835/tetra-q"
}

aws sqs list-queues

aws sqs send-message --queue-url https://us-west-2.queue.amazonaws.com/539023142835/tetra-q --message-body "This is example 1"

{
    "MD5OfMessageBody": "889694ef72d1124ebb248bd7ba3867e4",
    "MessageId": "ef27c15c-9296-4290-98d4-36353c74e18a"
}

aws sqs receive-message --queue-url https://us-west-2.queue.amazonaws.com/539023142835/tetra-q

aws sqs delete-message --queue-url https://us-west-2.queue.amazonaws.com/539023142835/tetra-q --receipt-handle \
AQEBWh4oc5n4xIPskftnk+1AkJB0hl2+rU/jxr3Y7hPD4KITRGcx1tVX9D4ithu2a59WnbgfJEdgaL0YGk+HRJKFPow83kPUIuJtyOVj66FAeiUUQtYk
kGyCUi0BeC+wZEDhwIbNibB7uokce/oOOiGwwthbBSiGdC/iywQQBbMrQAA43SbuCjz7/uUdwjYe0SjXvd4qnAejUugnjkU+ZeidyMzKcfKXOb3mTTtfz
7yBm26rMAWDqXdWgRH94H8YMZJGLUJ1L82ugP4BOBxkeQoIiO4zJPZGor8bcddDe3zNeXjFXl4PC4vQJ0X9/w6dGhFFVSVws1SV5Y8W4dm/PkoLaGxO1n
zKqHJ88P6guN2GC4HA1vu12+8mm3FJqBrTc/ztmvqq8bBCb6pNg1wVaKsafg==

aws sqs send-message --queue-url https://us-west-2.queue.amazonaws.com/539023142835/tetra-q --message-body "This is example 2" --delay-seconds 10

aws delete-queue --queue-url https://us-west-2.queue.amazonaws.com/539023142835/tetra-q
