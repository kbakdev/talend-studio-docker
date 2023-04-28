# Talend Studio Docker

This repository contains a Dockerfile and related resources for running Talend Studio in a Docker container on your local environment. A Makefile is also provided to simplify building and running the Docker container.

## Prerequisites
- Docker installed on your local machine 
- GNU Make installed on your local machine (optional)
    
## Building the Docker image

To build the Docker image, run the following command in the directory containing the Dockerfile:

```bash
docker build -t talend-studio-docker:latest .
```

Alternatively, if you have GNU Make installed, you can use the Makefile:

```bash
make build
```

## Running the Docker container
To run the Docker container, execute the following command:

```bash
docker run -it --rm talend-studio-docker:latest
```

Alternatively, if you have GNU Make installed, you can use the Makefile:

```bash
make run
```

This will launch Talend Studio in the Docker container. To stop the container, press Ctrl+C in the terminal.
