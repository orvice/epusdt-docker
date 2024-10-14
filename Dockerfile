FROM debian as builder

RUN apt update && apt install wget -y

WORKDIR /app

RUN wget  https://github.com/assimon/epusdt/releases/download/v0.0.2/epusdt_v0.0.2_Linux_x86_64.tar.gz
RUN tar -xzf epusdt_v0.0.2_Linux_x86_64.tar.gz


FROM ghcr.io/orvice/go-runtime:master

COPY --from=builder /app/epusdt /app/epusdt

ENTRYPOINT [ "/app/epusdt" ]

CMD [ "http","start" ]