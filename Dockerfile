FROM docker.io/node:lts-alpine

WORKDIR /app

COPY dist/next4 .

RUN npm --omit=dev -f install

CMD [ "npx", "next", "start"]
