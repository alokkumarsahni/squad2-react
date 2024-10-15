# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose both ports for the services
EXPOSE 3001 3002

# Use an environment variable to choose which service to run
# Default to "appointment-service.js" if no argument is passed
CMD ["sh", "-c", "node ${SERVICE:-appointment-service.js}"]
