FROM python:3.12-slim
RUN mkdir /app
COPY requirements.txt /app
RUN pip3 install -r /app/requirements.txt --no-cache-dir
COPY KBRMTLBOT/ /app
WORKDIR /app
CMD ["python3", "main.py"]