# Use an official Ubuntu image as a parent image
FROM ubuntu:latest

# Update the package list and install a few packages
RUN apt-get update && apt-get install -y curl vim wget

# Define the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]