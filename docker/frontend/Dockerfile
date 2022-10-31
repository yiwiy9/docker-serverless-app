FROM node:16-buster-slim

WORKDIR /home/app

RUN apt-get update && apt-get install -y \
    git

COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
CMD ["entrypoint.sh"]
