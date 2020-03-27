FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /src/venv/requirements.txt
RUN pip install -r /src/venv/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
CMD python /src/app.py