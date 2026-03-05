# syntax=docker/dockerfile:1
# check=skip=SecretsUsedInArgOrEnv
FROM ubuntu:latest
EXPOSE 8000
WORKDIR /app

ENV DBHOST=localhost DBPORT=5432
ENV DBUSER=root DBPASSWORD=root DBDBNAME=root 

COPY ./main main
CMD [ "./main" ]
