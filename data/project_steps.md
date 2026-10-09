# Dockerized Web Application — Project Steps

1. **Create GitHub Repository:** Create a repository named `dockerized-web-app` with a description explaining that it demonstrates Docker containerization of a Python Flask application.
2. **Create Project Structure:** Organize the repository with `app/`, `Dockerfile`, `docker-compose.yml`, `.dockerignore`, `.gitignore`, and `README.md`.
3. **Create `app/app.py`:** Develop a simple Flask web application with home, health-check, and application-information endpoints.
4. **Create `app/requirements.txt`:** List Flask as the Python dependency required to run the application.
5. **Create `Dockerfile`:** Define the Python base image, working directory, dependency installation, application files, exposed port, and startup command.
6. **Create `docker-compose.yml`:** Configure the application service, Docker image, container name, port mapping, environment variables, and restart policy.
7. **Create `.dockerignore`:** Exclude unnecessary files, such as Git metadata, Python cache files, virtual environments, and local configuration files, from the Docker build context.
8. **Create `.gitignore`:** Prevent common development files, virtual environments, IDE settings, and environment-variable files from being committed to Git.
9. **Create `README.md`:** Document the project overview, tools used, repository structure, application endpoints, Docker build and run commands, Docker Compose usage, and cleanup instructions.
10. **Build, Run, and Verify:** Build the Docker image, start the container, access the application through port 5000, verify the health endpoint, inspect container status and logs, and confirm that the application works as expected.
