FROM python:3.9

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

RUN git clone https://github.com/NohamR/trio_http_proxy.git

WORKDIR /app/trio_http_proxy

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "trio_http_proxy.py"]
