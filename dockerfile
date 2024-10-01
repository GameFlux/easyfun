# Use Node.js official image
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files to the working directory
COPY . .

# Expose the port your app will run on
EXPOSE 443

# Command to run your app
CMD [ "node", "index.js" ]
