# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# 👇 Add this line for auto-reload support
RUN pip install watchdog

# Copy all files
COPY . .

# Run the app
CMD ["python", "app.py"]

