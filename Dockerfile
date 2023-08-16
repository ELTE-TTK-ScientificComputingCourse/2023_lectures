FROM python:3.10-slim

WORKDIR /src

COPY requirements.txt .

RUN apt-get update && \
    pip install --upgrade pip && \
    pip install notebook==6.5.5 && \
    pip install -r requirements.txt

COPY slides ./slides

CMD ["jupyter", "notebook", "--port=8080", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
