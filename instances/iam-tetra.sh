IAM Users

aws iam list-users

IAM groups

aws iam create-user --user-name tetrauser

aws iam create-group  --group-name tetra-grp

aws iam add-user-to-group --user-name tetrauser --group-name tetra-grp
