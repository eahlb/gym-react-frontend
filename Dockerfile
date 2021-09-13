FROM node:16
LABEL author="Erik Ahlberg"

WORKDIR /app

COPY package*.json ./
RUN npm install && \
    npm install react-scripts -g

COPY . ./
EXPOSE 3000

ENTRYPOINT [ "npm", "run" ]
CMD [ "start" ]