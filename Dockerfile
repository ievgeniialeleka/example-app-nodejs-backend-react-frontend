FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
ENV PATH="./node_modules/.bin:$PATH"
COPY . .
RUN npm run build && ls -l static/
EXPOSE 3000
CMD ["npm", "start"]
