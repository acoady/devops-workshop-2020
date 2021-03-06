FROM  python:3.8-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY service ./service

EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0", "service:app"]