# Use an official Node.js runtime as a base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Expose the port on which your Node.js app runs (replace 3000 with your app's port if necessary)
EXPOSE 8000

# Command to start the application
CMD ["npm", "start"]
