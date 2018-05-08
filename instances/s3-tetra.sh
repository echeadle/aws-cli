AWS S3 service

Make Bucket
aws s3 mb s3://tetra-test-s3

aws s3 ls s3://tetra-test-s3/test/

aws s3 cp README.md s3://tetra-test-s3/test/  --storage-class { STANDARD REDUCED_REDUNDANCY STANDARD_IA}

aws s3 ls s3://tetra-test-s3/test

aws s3 rm  s3://tetra-test-s3/source-file.sh

aws s3 rb s3://tetra-test-s3
