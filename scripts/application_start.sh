#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log

echo 'pm2 start app.js' >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log
pm2 start app.js --name app >> /home/ec2-user/nodejs-aws-codedeploy-pipeline/deploy.log