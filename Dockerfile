FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache \
    python3 \
    py3-pip \
    gcc \
    g++ \
    musl-dev \
    python3-dev \
    gfortran \
    openblas-dev \
    lapack-dev && \
    pip3 install --break-system-packages \
    requests \
    beautifulsoup4 \
    pandas \
    numpy \
    lxml \
    openpyxl \
    scikit-learn \
    matplotlib \
    pillow \
    telethon && \
    apk del gcc g++ musl-dev python3-dev gfortran

USER node
