FROM debian

RUN apt update && apt install wget -y

WORKDIR /app

RUN wget  https://github.com/assimon/epusdt/releases/download/v0.0.2/epusdt_v0.0.2_Linux_x86_64.tar.gz
RUN tar -xzf epusdt_v0.0.2_Linux_x86_64.tar.gz