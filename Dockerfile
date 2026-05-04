FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    INVENAI_HOST=0.0.0.0 \
    INVENAI_PORT=8000

WORKDIR /app
COPY . .

RUN chmod +x run.sh && mkdir -p backend/data

EXPOSE 8000
CMD ["python", "backend/server.py"]
