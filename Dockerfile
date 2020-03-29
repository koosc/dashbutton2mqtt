FROM node:12

RUN apt update && apt install -y libpcap-dev

RUN mkdir /app

ENV NODE_ENV production

WORKDIR /app

ADD . /app

# npm won't install git repo from package.json
RUN npm i -g package.json && npm i https://github.com/mranney/node_pcap.git && npm i -g

CMD dashbutton2mqtt -m /mapping.jsons