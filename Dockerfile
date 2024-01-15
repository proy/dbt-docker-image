#Base image to work with
FROM ubuntu:20.04
FROM ghcr.io/dbt-labs/dbt-snowflake:1.5.0

LABEL maintainer="proy"
RUN apt-get update && apt-get -y upgrade

CMD ["echo", "dbt snowflake image created and upgraded"]



