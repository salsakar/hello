FROM node

WORKDIR /app
COPY . /app

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install

EXPOSE 3000
ENTRYPOINT npm start
