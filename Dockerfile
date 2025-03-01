FROM node:22.14-bullseye-slim
EXPOSE 80
RUN mkdir /app
RUN apt update && apt install -y git
ENV HOST=0.0.0.0
ENV PORT=80

WORKDIR /app
RUN git clone --depth 1 https://github.com/coryforsythe/dcccd_demo .
RUN npm install
RUN npm run build
CMD node dist/server/entry.mjs