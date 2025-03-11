<<<<<<< HEAD
# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8084
EXPOSE 8084

# Run the FastAPI app
>>>>>>> 45d791e (Initial commit)
=======
# Use Python base image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Upgrade pip and setuptools to avoid package issues
RUN pip install --upgrade pip setuptools

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the FastAPI port
EXPOSE 8084

# Run the FastAPI app
>>>>>>> 63a0903 (Initial commit with CI/CD setup)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8084"]
