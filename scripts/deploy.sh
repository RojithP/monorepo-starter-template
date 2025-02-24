#!/bin/bash

echo "Deploying to production...";

git pull origin main;

SERVER_STATUS=$(pm2 status | grep server);
CLIENT_STATUS=$(pm2 status | grep client);

if [ -z "$SERVER_STATUS" ]; then
  echo "Server is NOT running! Restarting..."
else
  echo "Server is running fine."
fi

if [ -z "$CLIENT_STATUS" ]; then
  echo "Client is NOT running! Restarting..."
else
  echo "Client is running fine."
fi
