FROM node:10.15-alpine

ADD ./run_artillery.sh /bin/

RUN npm install -g artillery@1.6.0-29 --ignore-scripts \
    && chmod +x /bin/run_artillery.sh

VOLUME /artillery
WORKDIR /artillery

# Activate if you want to debug the container
# CMD [ "sleep", "3600s" ]

ENTRYPOINT  [ "sh", "/bin/run_artillery.sh" ]
