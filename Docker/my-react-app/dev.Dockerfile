# Use an official Node.js runtime as a parent image
FROM node:18-alpine as development

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 5173
EXPOSE 5173

# Start the Vite development server
CMD ["npm", "run", "dev"]