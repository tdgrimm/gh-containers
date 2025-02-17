FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.02qqf.mongodb.ne
ENV MONGODB_USERNAME terrygrimm
ENV MONGODB_PASSWORD xuJbtvatjXfoOZ07

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]