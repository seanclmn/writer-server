# Use Node.js v14 as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code into the container
COPY . .

# Build the TypeScript code
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the server
CMD [ "npm", "start" ]

