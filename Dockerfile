FROM alpine:3.19

add . /source

WORKDIR /source

RUN chmod +x install_deps.sh
RUN chmod +x build.sh

RUN install_deps.sh
RUN build.sh

ENTRYPOINT ["/bin/bash"]