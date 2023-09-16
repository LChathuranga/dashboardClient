# Use the official Node.js 14 base image
FROM node:18-alpine

WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN yarn install

# Copy the rest of the app files
COPY . .

# Build the app (if necessary)
RUN yarn run build

# Expose the port your app listens on (optional)
EXPOSE 3000

# Start the app
CMD [ "yarn", "start" ]
