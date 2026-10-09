# Test the Project
After creating all the project files, test the Dockerized web application on a machine where Docker is installed and running.

## Step 1: Build the Docker Image
docker build -t dockerized-web-app:latest .
This command builds a Docker image using the `Dockerfile` in the current directory.

## Step 2: Run the Docker Container
docker run -d --name dockerized-web-app -p 5000:5000 dockerized-web-app:latest
This starts the container in detached mode and maps host port 5000 to container port 5000.

## Step 3: Verify the Running Container
docker ps
This displays running containers. Confirm that `dockerized-web-app` appears in the output.

## Step 4: Test the Home Endpoint
Open the following URL in your browser:
http://localhost:5000
Expected response: Hello! This application is running inside Docker.

## Step 5: Test the Health Endpoint
Run: curl http://localhost:5000/health
Expected response: {"status":"healthy"}
This confirms that the health endpoint returns an HTTP 200 response.

## Step 6: Test the Information Endpoint
Run: curl http://localhost:5000/info
Expected response: {"application":"Dockerized Web Application","environment":"development"}
This verifies that the application returns its configured environment.

## Step 7: Check Container Logs
docker logs dockerized-web-app
This displays the application's logs and helps identify startup errors or request-related issues.

## Step 8: Verify Port Mapping
docker port dockerized-web-app
Expected output: 5000/tcp -> 0.0.0.0:5000
The exact output may vary depending on the host configuration. This command confirms the published port mapping.

## Step 9: Test Using Docker Compose
First, remove the container created in Step 2 to avoid a container-name conflict:
docker rm -f dockerized-web-app
Then build and start the application using Docker Compose: docker compose up --build -d
Verify the service: docker compose ps
Check its logs:  docker compose logs -f web

## Step 10: Stop and Clean Up
Stop the Compose-managed application and remove its container:  docker compose down
If you no longer need the image, remove it:  docker rmi dockerized-web-app:latest

**Expected result:** The application builds successfully, runs inside a Docker container, responds through its endpoints, and can also be managed using Docker Compose.
