FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache python3 py3-pip && \
    pip3 install --break-system-packages \
    requests \
    beautifulsoup4 \
    pandas \
    numpy \
    lxml \
    openpyxl \
    scikit-learn \
    matplotlib \
    pillow

USER node
