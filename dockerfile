# Use an official Node.js runtime as the base image
FROM node:16.16.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app (replace 'npm run build' with your actual build command)
RUN npm run build

# Expose the port the app will run on (usually 3000 for React)
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "start"]