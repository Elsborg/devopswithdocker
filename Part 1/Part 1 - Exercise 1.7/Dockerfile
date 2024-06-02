# Ubuntu image
FROM ubuntu:22.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the hello.sh file from this directory to /usr/src/app/ creating /usr/src/app/hello.sh
COPY script.sh .

# Update the package list and install curl
RUN apt-get update && apt-get install -y curl

# Exexute permission to the script.sh file
RUN chmod +x script.sh

# Run the script.sh file
CMD ./script.sh
