FROM ghcr.io/home-assistant/base:latest

ENV LANG C.UTF-8
ENV NPM_CONFIG_UNSAFE_PERM true

RUN apk add --no-cache jq nodejs npm && \

# Copy data for add-on
RUN mkdir -p /data
WORKDIR /data
COPY . .
RUN chmod +x run.sh

CMD [ "./run.sh" ]
