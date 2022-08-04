FROM nginx:latest

RUN apt update \
    && apt-get install -y nfs-common nano

RUN apt-get upgrade -y

EXPOSE 80

CMD tail -F /dev/null