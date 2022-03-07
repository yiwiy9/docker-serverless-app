FROM node:16-alpine3.14

# ビルド時に引数を受け取る
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

WORKDIR /home/app

# serverless framework のインストール
RUN npm install -g serverless

# timezoneをJSTにする
RUN apk --update-cache --no-cache add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del --purge tzdata

COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
CMD ["entrypoint.sh"]
