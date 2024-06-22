# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container to /opt
WORKDIR /opt

#Copy Package.json to /opt
COPY package.json ./

# Install the Dependencies
RUN npm install

# Copy everything to /opt
COPY . /opt

#Expose the specified network ports at runtime.
EXPOSE 3000

# Provides defaults for an executing container
CMD [ "npm", "run", "start:dev" ]
