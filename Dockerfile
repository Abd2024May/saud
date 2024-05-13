FROM node:20-alpine
RUN mkdir -p /app
WORKDIR /app
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start"]