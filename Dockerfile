# Pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER Lars Larsson <lars.martin.larsson@gmail.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    git-core \
    build-essential \
    gcc \
    python \
    python-dev \
    python-pip \
    python-virtualenv \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*
RUN pip install pyserial
RUN pip install RPi.GPIO

# Define working directory
WORKDIR /data
VOLUME /data

# Define default command
CMD ["bash"]
