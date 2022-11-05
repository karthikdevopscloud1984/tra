FROM python:3.7-alpine

COPY requirements.txt /opt/app/requirements.txt

WORKDIR /opt/app
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install -r /opt/app/requirements.txt
COPY . /opt/app/
EXPOSE 8000
ENTRYPOINT ["python", "hello.py"]


