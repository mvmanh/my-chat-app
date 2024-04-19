#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/my-chat-app/deploy.log
ls
cd /home/ec2-user/my-chat-app
echo 'pm2 reload app' >> /home/ec2-user/my-chat-app/deploy.log
pm2 reload app >> /home/ec2-user/my-chat-app/deploy.log