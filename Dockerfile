FROM node:alpine

WORKDIR /app

COPY ./package*.json ./

RUN npm i

COPY . ./

ENV MONGODB_URL = mongodb://CheeseMaster_69:seabirdkant1A@cluster0-shard-00-00.5crnt.mongodb.net:27017,cluster0-shard-00-01.5crnt.mongodb.net:27017,cluster0-shard-00-02.5crnt.mongodb.net:27017/Zomato?ssl=true&replicaSet=atlas-ghswrc-shard-0&authSource=admin&retryWrites=true&w=majority

ENV GOOGLE_CLIENT_ID = 1046677400551-rr61296v86g12i1g8qvoe5crs58qdur6.apps.googleusercontent.com
ENV GOOGLE_CLIENT_SECRET = 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
ENV AWS_S3_ACCESS_KEY = AKIARAU43Y5ICMCM3FFQ
ENV AWS_S3_SECRET_KEY = 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
ENV NODE_ENV=production
ENV PORT=5000

CMD ["npm", "run", "start"]