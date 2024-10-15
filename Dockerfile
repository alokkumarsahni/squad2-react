# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the ports for both services
EXPOSE 3000 3001

# Command to run the application (update as needed for your services)
CMD ["npm", "start"]
