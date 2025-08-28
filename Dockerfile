#FROM node:20-alpine
#WORKDIR /app
#COPY . .
#RUN npm install
#EXPOSE 3000
#CMD ["npm", "start"]
#FROM node:18-alpine
#WORKDIR /app
#COPY package*.json ./
#RUN npm install
#COPY . .
#EXPOSE 3000
#CMD ["npm", "start"]
FROM node:18-alpine
WORKDIR /app
# Copy package files first for better caching
COPY package*.json ./
RUN npm install
# Copy the rest of the application
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
