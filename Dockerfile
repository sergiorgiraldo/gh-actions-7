FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gh-action
ENV MONGODB_CLUSTER_ADDRESS cluster0.nnllzq2.mongodb.net
ENV MONGODB_USERNAME sa
ENV MONGODB_PASSWORD sa

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]