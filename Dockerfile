FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["gunicorn", "api.call_remote_server:app", "--bind", "0.0.0.0:8080"]
