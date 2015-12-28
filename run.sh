#!/bin/bash
usermod -u $EXTERNAL_ID builder

echo "ENV_PATH     PATH=$PATH" >> /etc/login.defs
su builder -c "cd /data; $*"
