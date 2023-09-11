# Use an official Node.js runtime as the base image
FROM node:16



# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port your app is listening on (e.g., 3000)
EXPOSE 3000

# Command to start your Node.js application
CMD ["node", "index.js"]
