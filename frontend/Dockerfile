FROM node:20-alpine

WORKDIR /app
# Copy config and package files first for better Docker caching
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install --legacy-peer-deps || yarn || true

# Copy the rest of the code
COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
