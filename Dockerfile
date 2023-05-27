# Используйте официальный образ PostgreSQL
FROM postgres:latest

# Установите переменные окружения для настройки базы данных
ENV POSTGRES_DB=digital_chief_db
ENV POSTGRES_USER=digital_chief_user
ENV POSTGRES_PASSWORD=password

# Копируйте файлы схемы и данных в контейнер
COPY src/main/resources/db_scripts/digital_chief_db_dump.sql /docker-entrypoint-initdb.d/

# Откройте порт 5432 для внешних подключений
EXPOSE 5432
