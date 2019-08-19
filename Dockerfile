FROM mongo
WORKDIR /home/containerFiles
COPY backupMongo.sh .
RUN apt-get update
RUN apt-get install -y nano
RUN apt-get install -y cron
RUN set EDITOR="nano"
RUN service cron start
