FROM python:3

RUN pip install websocket-server

WORKDIR /usr/src/app

COPY ver_14 ./

CMD [ "python", "freemothersql14.py" ]
