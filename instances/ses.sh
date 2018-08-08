aws ses verify-email-identity --email-address edward.cheadle8@gmail.com
aws ses verify-email-identity --email-address edward.cheadle@cambiahealth.com
aws ses list-identities

aws ses send-email --from edward.cheadle@cambiahealth.com --to edward.cheadle8@gmail.com --subject "Test Send Email" --text "This is the first email sent"
{
    "MessageId": "01010163620b66b7-1881a73a-b13c-4232-9023-b308087d49bb-000000"
}

aws ses get-send-quota
{
    "Max24HourSend": 200.0,
    "MaxSendRate": 1.0,
    "SentLast24Hours": 0.0
}
