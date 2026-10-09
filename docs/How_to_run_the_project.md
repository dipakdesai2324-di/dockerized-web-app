# How to Execute the Dockerized Web Application Project
Since the files for the `dockerized-web-app` project have been created on GitHub, the next step is to run the application and verify that Docker works correctly.
We can execute this project on a Windows laptop using Docker Desktop. Jenkins is not required for this project because the main goal is to learn how to build and run a Dockerized application.

## Step 1: Download the Project from GitHub
1. Open the `dockerized-web-app` repository on GitHub.
2. Click the green **Code** button.
3. Select **Download ZIP**.
4. Extract the downloaded ZIP file to a folder, such as `Desktop\dockerized-web-app`.
The project folder should contain the following files:
```text
dockerized-web-app/
├── app/
│   ├── app.py
│   └── requirements.txt
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── .gitignore
└── README.md
```
## Step 2: Install and Start Docker Desktop
If Docker is already installed, skip to Step 3.
1. Open the official [Docker Desktop for Windows installation guide](https://docs.docker.com/desktop/setup/install/windows-install/).
2. Download and install Docker Desktop.
3. If prompted, enable the **WSL 2** backend.
4. Restart the laptop if required by the installer.
5. Open Docker Desktop from the Windows Start menu.
6. Wait until Docker has started successfully.

## Step 3: Open the Project in PowerShell
1. Open the extracted `dockerized-web-app` folder in File Explorer.
2. Click the address bar at the top of the window.
3. Type `powershell` and press **Enter**.
PowerShell will open in the project directory.
Run the following commands one by one.

### Check the Docker version
docker --version
This command verifies that Docker is installed and available in the terminal.

### Check the Docker Compose version
docker compose version 
This command verifies that Docker Compose is available.
If both commands display version information, proceed to the next step.

## Step 4: Build and Run the Project
Execute the following command in PowerShell: docker compose up --build

### Explanation of the command
* docker compose: Uses Docker Compose to manage the application's services.
* up: Creates and starts the required containers.
* --build: Builds the Docker image before starting the application when needed.

### What happens when we execute this command?
1. Docker reads the `docker-compose.yml` file.
2. Docker uses the `Dockerfile` to build the application image.
3. Docker downloads the Python base image if it is not already available locally.
4. Docker installs Flask using `app/requirements.txt`.
5. Docker copies the application source code into the image.
6. Docker creates and starts the application container.
7. The application becomes accessible through port `5000`.
The first build may take a few minutes. Keep the terminal open while the application is running.

## Step 5: Open the Application in a Browser
Once the application starts successfully, open the following URLs in your browser.

### 1. Home Page
URL: http://localhost:5000
Expected response: Hello! This application is running inside Docker.
This endpoint verifies that the Flask application is running.

### 2. Health Endpoint
URL: http://localhost:5000/health
Expected response: 
{
  "status": "healthy"
}
This endpoint returns the application's health status.

### 3. Application Information Endpoint
URL: http://localhost:5000/info
Expected response:
{
  "application": "Dockerized Web Application",
  "environment": "development"
}
This endpoint displays the application name and the environment variable configured for the application.

## Step 6: Check the Running Container
Open a **second PowerShell window** while the application is running.
Execute the following command: docker ps
This command lists the currently running containers.
You should see a container named `dockerized-web-app`, with a port mapping similar to: 0.0.0.0:5000->5000/tcp
This mapping connects port `5000` on your laptop to port `5000` inside the container.

### Check the application logs
Run: docker logs dockerized-web-app
This command displays the container's application logs, which can help us troubleshoot errors.

## Step 7: Stop the Project
Return to the terminal where `docker compose up --build` is running.
Press: Ctrl + C
Then execute: docker compose down
This command stops and removes the Compose-managed container and its network, if applicable.
The project files and built Docker image are not deleted.

## What We Learn from This Project
By completing this project, we learn:
1. **Dockerfile:** How to define the instructions for building a Docker image.
2. **Docker image:** How to package the application and its dependencies.
3. **Docker container:** How to run the application in an isolated environment.
4. **Port mapping:** How to access a containerized application from a browser.
5. **Environment variables:** How to configure application behavior.
6. **Docker Compose:** How to manage application containers through a YAML file.
7. **Container management:** How to list and inspect running containers.
8. **Docker logs:** How to view application output and troubleshoot issues.
9. **Image building:** How to rebuild an image after changing application files.
10. **Container cleanup:** How to stop and remove resources created by Docker Compose.

## Final Execution Flow
The complete execution flow is: GitHub Repository-->Download and Extract Project--> Open PowerShell in Project Folder--> docker compose up --build
--> Build Docker Image--> Create and Start Container--> Access Application at localhost:5000--> Verify Endpoints and Container Logs--> docker compose down
  
**Important:** Start with Steps 1–4. If you encounter an error, note the exact error message and troubleshoot it before proceeding.
