FROM python:3.12-slim
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt --no-cache-dir
CMD ["python3", "main.py"]