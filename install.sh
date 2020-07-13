#!/bin/sh
SRC_DIR="/python/"

for package in $@; do
  /var/lang/bin/pip3 install $package -t $SRC_DIR
done

zip -r python.zip ${SRC_DIR}
[ $? == 0 ] && echo "successfully completed.."
