aws ec2 run-instances \
--image-id ami-0323c3dd2da7fb37d \
--count 1 \
--instance-type t2.micro \
--key-name testkey \
--user-data file:/Users/salih/Documents/CW-Workspace/aws-devops-cloud-project/user-data.sh \ 
--subnet-id subnet-2e784200 \
--security-group-ids sg-047ddc17ad1a46a47 \
