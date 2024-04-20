# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Clone the github repository
RUN git clone https://github.com/KondaVenkateswarlu11/i27-clothing.git

# Change the working directory to the new 'i27-clothing' directory
WORKDIR /app/i27-clothing

# Install the dependencies in the local node_modules folder
RUN npm install

# Informs Docker that the container listens on the specified network ports at runtime.
EXPOSE 3000

# Provides defaults for an executing container
CMD [ "npm", "run", "start:dev" ]

