FROM node:22.17.1-alpine3.22

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm ci

COPY tsconfig.json tsconfig.json
COPY rollup.config.js rollup.config.js
COPY src/ src/

RUN npm run build

ENTRYPOINT ["node", "dist/index.js"]
