# Use official Node image
FROM node:20.17.0

# Set working directory inside container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# App listens on port 3000
EXPOSE 3000

# Command to run app
CMD ["npm", "start"]
