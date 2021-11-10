FROM alpine:latest

RUN apk --no-cache add bash borgbackup openssh-client

RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh

ENV TZ=America/Los_Angeles

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /borg

ENTRYPOINT ["borg"]
