# dockerized-web-app
Dockerized Python Flask web application demonstrating Docker images, containers, port mapping, volumes, networks, and Docker Compose.
# Dockerized Web Application

## Project Overview
This project demonstrates how to containerize a Python Flask web application using Docker. It covers Docker image creation, container execution, port mapping, environment variables, and Docker Compose.

## Tools Used
* Docker
* Docker Compose
* Python
* Flask
* Git
* GitHub
* Linux

## Project Structure
dockerized-web-app/
├── app/
│   ├── app.py
│   └── requirements.txt
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── .gitignore
└── README.md

## Application Endpoints
* / — displays the application welcome message.
* /health — returns the application health status.
* /info — displays application information and the configured environment.

## How to Run the Project
### Prerequisites
Install Docker Engine or Docker Desktop and ensure Docker is running.
### Build the Docker Image
docker build -t dockerized-web-app:latest .
### Run the Container
docker run -d \
  --name dockerized-web-app \
  -p 5000:5000 \
  -e APP_ENV=development \
  dockerized-web-app:latest
### Access the Application
Open these URLs in a browser:
* http://localhost:5000
* http://localhost:5000/health
* http://localhost:5000/info
### Run with Docker Compose
To build and start the application:
docker compose up --build -d
To view running containers: docker compose ps
To view application logs: docker compose logs -f web
To stop and remove the Compose-managed container: docker compose down
## Docker Concepts Demonstrated
### Dockerfile
Defines the instructions required to build the application image.
### Docker Image
A packaged template containing the application code, Python runtime, and dependencies.
### Docker Container
A running instance of the Docker image.
### Port Mapping
The configuration `5000:5000` maps port 5000 on the host to port 5000 in the container.
### Environment Variables
The APP_ENV variable allows the application environment to be configured without changing the source code.
### Docker Compose
Defines the application service and its configuration in a YAML file, allowing the application to be built and started consistently.
## Cleanup
Remove the container: docker rm -f dockerized-web-app
Remove the image if it is no longer required: docker rmi dockerized-web-app:latest

## Learning Outcome
This project provides hands-on practice with Docker image creation, container lifecycle management, port mapping, environment configuration, container logs, and Docker Compose.
