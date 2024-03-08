#!/bin/bash

# Assuming your Python application is in the current directory

# Zip the application
zip -r app.zip *

# Set your AWS S3 bucket name
S3_BUCKET="pythonflask1"

# Upload the zip file to S3
aws s3 cp app.zip s3://$S3_BUCKET/

# Clean up: Remove the local zip file
rm app.zip
