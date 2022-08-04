FROM nginx:latest

RUN apt update \
    && apt-get install -y nfs-server nano

RUN apt-get upgrade -y

COPY shellweb1.sh .

EXPOSE 80

CMD tail -F /dev/null