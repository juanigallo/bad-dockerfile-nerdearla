FROM node:10.15-alpine
WORKDIR /usr/src/app
RUN npm install --silent
COPY . .
RUN npm run build
EXPOSE 3001
CMD ["npm", "start"]