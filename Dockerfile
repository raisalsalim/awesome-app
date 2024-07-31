# Use the official Node.js image.
FROM node:14

# Set the working directory.
WORKDIR /usr/src/app

# Copy the application code.
COPY package*.json ./
RUN npm install
COPY . .

# Expose the port the app runs on.
EXPOSE 3000

# Start the app.
CMD [ "node", "server.js" ]
