#!/bin/bash
cat << EOF >> ~/.bashrc
trap 'pkill -TERM jenkins; sleep 3; exit 0' TERM
EOF
exec /bin/bash
