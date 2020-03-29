FROM node:12

RUN mkdir /app

WORKDIR /app

ADD . /app

RUN apt update && apt install -y libpcap-dev

RUN npm i -g

CMD dashbutton2mqtt -m /mapping.jsons