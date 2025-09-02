FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app    

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt  

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5002

# Run the application
CMD ["python", "app.py"]