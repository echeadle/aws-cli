IAM Users

aws iam list-users

IAM groups

aws iam create-user --user-name tetrauser

aws iam create-group --group-name tetra-grp
aws iam detach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name tetra-grp
aws iam delete-group --group-name tetra-grp

aws iam add-user-to-group --user-name tetrauser --group-name tetra-grp
aws iam remove-user-from-group --user-name tetrauser --group-name tetra-grp

aws iam get-group  --group-name tetra-grp

IAM Authentication

aws iam create-login-profile --user-name tetrauser --password R@U#2hwnUm1

aws iam create-access-key --user-name tetrauser  > key.txt
{
    "AccessKey": {
        "UserName": "tetrauser",
        "AccessKeyId": "AKIAJHAIYFYA32S2HL3Q",
        "Status": "Active",
        "SecretAccessKey": "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",
        "CreateDate": "2018-05-08T04:38:12.257Z"
    }
}

aws iam delete -access-key --user-name tetrauser --access-key-id AKIAJHAIYFYA32S2HL3Q

IAM Policies and Permissions

aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name tetra-grp
