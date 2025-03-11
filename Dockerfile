# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Upgrade pip and setuptools to avoid package issues
RUN pip install --upgrade pip setuptools

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8084
EXPOSE 8084

# Run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8084"]
