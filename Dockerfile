FROM bash:5.1-alpine3.17

RUN apk add --no-cache curl dos2unix
ADD FGDS.sh ./FGDS.sh
RUN dos2unix FGDS.sh && chmod +x FGDS.sh
ENTRYPOINT ["bash", "./FGDS.sh"]
