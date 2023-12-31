FROM python:3.9
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

# Делаем скрипт оболочки исполняемым и запускаем его
RUN chmod +x start.sh
CMD ["./start.sh"]
