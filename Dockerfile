# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install Flask directly (normally you'd use requirements.txt)
RUN pip install flask

# Copy your local app.py into the container
COPY app.py .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
