# Use an official Node.js runtime as a parent image from dockerhub
FROM node:16-alpine 

# Set the working directory to /app
WORKDIR /app

# Add the current package.json contents into the container at ./
ADD package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Make port 4000 available to the world outside this container
EXPOSE 4000

# Define environment variable
ENV NODE_ENV=production

# Run the app when the container launches
CMD ["node", "index.js"]

