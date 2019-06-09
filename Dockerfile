FROM debian:stretch-slim

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        wine \
        wine32 \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /eac
COPY CheckLog.exe /eac
COPY HelperFunctions.dll /eac
COPY README.md /eac

WORKDIR /eac

CMD ["/bin/bash"]
