FROM node:6-alpine

# Make the app run in production mode.
ENV NODE_ENV production

# Define working directory.
WORKDIR /app

# Install dependencies in production mode (no dev dependencies).
COPY package.json /app/
RUN npm install --production --quiet

# Copy app files
COPY src /app/src/

EXPOSE 8080
CMD ["node", "src/server.js"]
