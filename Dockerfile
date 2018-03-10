FROM node:4-alpine

# install system dependencies
RUN apk add --update \
        sqlite \
        ffmpeg \
        bash && \
    rm -rf /var/cache/apk/*

# copy source
COPY . /app
WORKDIR /app

# install node dependencies
RUN npm install

# start server on port 3000
EXPOSE 3000
CMD ["/bin/bash", "-c", "npm start" ]
