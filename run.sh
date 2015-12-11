#!/bin/bash
usermod -u $EXTERNAL_ID builder

su builder -c "cd /data; $*"
