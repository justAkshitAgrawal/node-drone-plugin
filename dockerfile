FROM node:14

WORKDIR /app

COPY server.js /app/

RUN npm install

ENV PLUGIN_PORT=3000

EXPOSE ${PLUGIN_PORT}

CMD ["node", "server.js"]