-- Необходимо выбрать БД digital_chief_db и выполнить команды:
GRANT ALL PRIVILEGES ON DATABASE digital_chief_db TO digital_chief_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO digital_chief_user;
GRANT ALL PRIVILEGES ON SEQUENCE employees_id_seq TO digital_chief_user;
GRANT ALL PRIVILEGES ON SEQUENCE departments_id_seq TO digital_chief_user;
