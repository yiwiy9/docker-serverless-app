FROM python:3.9-slim-buster

WORKDIR /home/app

RUN apt-get update && apt-get install -y \
    curl \
    git

# nodejs, npmのインストール
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# serverless framework のインストール
RUN npm install --location=global serverless

COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
CMD ["entrypoint.sh"]
