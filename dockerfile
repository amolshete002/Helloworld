FROM ubuntu: Latest

# set the working directory in th image
WORKDIR /app

# Copy the file from host file system to the image file system
COPY . /app

# Install the necessary packages
RUN apt-get update && apt-get install -y paython3 python3-pip

# Set enviromrnt veriable
ENV NAME World

# Run a command to start the application
CMD ["python3" , "app.py"]
