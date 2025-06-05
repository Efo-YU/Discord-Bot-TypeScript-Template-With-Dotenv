FROM node:24-slim

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install packages
RUN npm install

# Copy the app code
COPY . .

# Build the project
RUN npm run build

# Expose ports
EXPOSE 3001

# Run the application
CMD ["sh", "-c", "node --enable-source-maps dist/start-bot.js commands register && node dist/start-manager.js"]
