#!/bin/bash
usermod -u $EXTERNAL_ID builder

su - builder -c "export PATH=$PATH:/nodejs/bin; cd /data; $*"
