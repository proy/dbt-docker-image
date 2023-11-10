#Base image to work with
FROM ubuntu:20.04

LABEL maintainer="proy"
RUN apt-get update && apt-get -y upgrade



RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip install dbt-snowflake==1.5

# Create a user group named dbtuser
RUN groupadd -r dbtuser

# Create a new Linux user and add it to the dbtuser group
RUN useradd -m -r -g dbtuser dbtuser

# Switch to the newuser
USER dbtuser

# Set the working directory
WORKDIR /home/dbtuser
CMD ["echo", "dbt snowflake image created and upgraded"]

