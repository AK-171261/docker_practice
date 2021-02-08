FROM alpine:latest
RUN apk add cmd:pip3.8\
    && pip3.8 install --upgrade pip
WORKDIR /app
COPY . /app
ENTRYPOINT ["python3"]
CMD ["argpas.py"]