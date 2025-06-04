#!/bin/bash

echo "Let's onboard your blog to PushBlog!"
read -p "GitHub Repository Owner, example - johndoedev: " OWNER
read -p "Display Name, example - John Doe: " OWNER_DISPLAY_NAME
read -p "Repository Name, example - pushblog-posts: " REPOSITORY
read -p "Onboarding Key, ask linkedin.com/in/pnieweglowski via DM: " KEY

# Confirm input
echo
echo "Sending the following data:"
echo "Owner: $OWNER"
echo "Display Name: $OWNER_DISPLAY_NAME"
echo "Repository: $REPOSITORY"
echo "Key: $KEY"
echo

# Send the POST request
curl -X POST https://pushblog.io/api/v1/blogs/onboarding \
  -H "Content-Type: application/json" \
  -d @- <<EOF
{
  "owner": "$OWNER",
  "owner_display_name": "$OWNER_DISPLAY_NAME",
  "repository": "$REPOSITORY",
  "key": "$KEY"
}
EOF
