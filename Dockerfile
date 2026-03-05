# syntax=docker/dockerfile:1
# check=skip=SecretsUsedInArgOrEnv
FROM ubuntu:latest
EXPOSE 8000
WORKDIR /app

ENV HOST=localhost DBPORT=5432
ENV USER=root DBPASSWORD=root DBNAME=root 

COPY ./main main
CMD [ "./main" ]
