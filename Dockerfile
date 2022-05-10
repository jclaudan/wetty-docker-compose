FROM node:0.10
RUN apt-get update && apt-get install -y git unzip
RUN git config --global color.ui always \
    && npm config set color always --global
ENV WEB_SHELL=bash
RUN wget "https://github.com/rabchev/web-terminal/archive/refs/heads/master.zip" -O tmp.zip \
    && unzip -d . tmp.zip \
    && rm tmp.zip
RUN npm install web-terminal -g
ENTRYPOINT [ "web-terminal", "--port", "80" ]
