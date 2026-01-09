FROM ubuntu:24.04

ARG COMPILE_ALL=false
ARG FOR_X=pi5

RUN echo "COMPILE_ALL: $COMPILE_ALL"
RUN echo "FOR_X: $FOR_X"

RUN apt-get update && apt-get install -y \
    bash \
    xz-utils \
    wget \
    kpartx \
    qemu-user-static \
    binfmt-support \
    systemd-container \
    parted \
    e2fsprogs \
    gdisk \
    util-linux

WORKDIR /workspace

COPY . /workspace

ENV COMPILE_ALL=${COMPILE_ALL}
ENV FOR_X=${FOR_X}

CMD bash -lc 'mkdir -p /mnt/raspios && bash installation/devices_and_distros/build.bash "$COMPILE_ALL" "$FOR_X"'