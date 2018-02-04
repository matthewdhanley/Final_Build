#!/bin/bash
if [[ -z "$1" ]]; then
  if [[ -z "${BOT_IP}" ]]; then
    BOT_IP='http://192.18.1.3:11311'
  fi
else
  BOT_IP="$1"
fi
echo $BOT_IP
cd ..
(echo -n "alias rmc='source " ;echo -n $PWD; echo -n "/devel/setup.bash";
echo "; ROS_MASTER_URI=$BOT_IP'";) >> ~/.bash_aliases

source ~/.bashrc
