#! /bin/bash

#
# A script to reconfigure the sample OAuth defaults that come out of the box with Jiiify
#
# Script args: google_oauth_id, facebook_oauth_id, twitter_oauth_id, twitter_oauth_key
#

CONFIG_FILE=/etc/jiiify/config.json

# Copy the template file
cp -rp /etc/jiiify/sample-config.json /tmp/sampe-config.json
mv /etc/jiiify/sample-config.json $CONFIG_FILE

# Overwrite default values in the template file
sed -i -e "s|587760109846\-8ctkp2qbuag2n7kh0lnd0vv8ur5u1os9\.apps\.googleusercontent\.com|$1|g" $CONFIG_FILE
sed -i -e "s|403322423208635|$2|g" $CONFIG_FILE
