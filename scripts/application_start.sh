#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
ls
cd /home/ec2-user/nodejs-aws-codedeploy-pipeline
ls
echo 'pm2 reload app' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
pm2 reload app >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log