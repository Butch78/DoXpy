# Use an official Python runtime as a parent image
FROM mcr.microsoft.com/devcontainers/python:1-3.11-bookworm

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip && \
    pip install --no-cache-dir wheel cython && \
    apt-get update && \
    apt-get install -y gcc && \
    apt-get install -y python3-dev

