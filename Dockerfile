FROM ubuntu:latest

# Install Python, pip, and git
RUN apt-get update && apt-get install -y \
 python3 \
 python3-pip \
 git

# Install PyYAML
RUN pip3 install PyYAML

# Copy the necessary files
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
#RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT [ "/entrypoint.sh" ]
