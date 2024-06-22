# Use an official Node.js runtime as a parent image
FROM node:16

# Create a Directory in the container
RUN mkdir /opt

# Set the working directory in the container to /opt
WORKDIR /opt

# Copy everything to /opt
COPY . /opt

#Expose the specified network ports at runtime.
EXPOSE 3000

# Provides defaults for an executing container
CMD [ "npm", "run", "start:dev" ]
