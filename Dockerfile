# Use an official Node.js runtime as a parent image from dockerhub
FROM node:16-alpine 

WORKDIR /app

ADD package*.json ./

RUN npm install

COPY . .

# Make port 4000 available to the world outside this container
EXPOSE 4000


# Run the app when the container launches
CMD ["node", "index.js"]

