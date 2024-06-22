# Use an official Node.js runtime as a parent image
FROM node:16

# Create a Directory in the container
RUN mkdir /opt/i27

# Set the working directory in the container to /opt
WORKDIR /opt/i27

# Install the Dependencies
RUN npm install

# Copy everything to /opt
COPY . /opt/i27

#Expose the specified network ports at runtime.
EXPOSE 3000

# Provides defaults for an executing container
CMD [ "npm", "run", "start:dev" ]
