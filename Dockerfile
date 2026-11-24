FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
    clang llvm lld \
    qemu-system-misc curl make \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["/bin/bash"]
