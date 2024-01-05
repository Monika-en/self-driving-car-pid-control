FROM alpine:3.19

add . /source

WORKDIR /source

RUN chmod +x install_deps.sh
RUN chmod +x build.sh

RUN install_deps.sh
RUN build.sh

RUN mkdir /app
RUN mv pid /app/

RUN rm -rf /source

WORKDIR /app
ENTRYPOINT ["pid"]