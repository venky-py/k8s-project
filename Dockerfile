# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt into the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set environment variable for Flask (to run in development mode)
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Expose the port the Flask app will run on
EXPOSE 6001

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=6001"]
