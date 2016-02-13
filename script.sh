#!/bin/bash
grep '^trap' ~/.bashrc > /dev/null
if [ $? -ne 0 ]; then
cat << EOF >> ~/.bashrc
trap 'pkill -TERM jenkins; sleep 3; exit 0' TERM
EOF
fi
/etc/init.d/jenkins start
exec /bin/bash
