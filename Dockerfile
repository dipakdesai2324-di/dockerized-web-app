
# Use a lightweight Python base image
FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy the dependency file
COPY app/requirements.txt .

# Install application dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY app/ .

# Set the default application environment
ENV APP_ENV=development

# Document the application port
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]
