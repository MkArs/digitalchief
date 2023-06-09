1. Описание предметной области.

База данных приложения содержит в себе таблицы departments и employees,
относящиеся друг к другу в соотношении один ко многим
(множество работников может ссылаться на 1 департамент).

Если говорить о строчке таблицы departments как об объекте,
то можно выделить следующие свойства:
- id (уникальный номер департамента) первичный ключ
- department_name (уникальное имя департамента)
- location (местоположение департамента)
- budget (бюджет департамента)
- phone (уникальный телефон департамента)


Если говорить о строчке таблицы employees как об объекте,
то можно выделить следующие свойства:
- id (уникальный номер работника) первичный ключ
- first_name (имя работника)
- last_name (фамилия работника)
- email (уникальный адрес электронной почты работника)
- salary (зарплата работника)
- department_id (номер департамента - ссылается на departments(id))

2. Описание зависимостей, подключенных в проект.

- spring-boot-starter-data-jpa
Starter для использования Spring Data JPA с Hibernate.

- spring-boot-starter-web
Starter для создания web, включая RESTful, приложений, используя Spring MVC. 
Использует Tomcat как встроенный контейнер по умолчанию.

- spring-boot-starter-test
Starter для тестирования Spring Boot приложений с библиотеками JUnit, 
Hamcrest и Mockito

- postgresql
PostgreSQL JDBC Driver для работы с БД

3. Пошаговые инструкции.

3.1. Создание и заполнение БД (скрипты выполняются для PostgreSQL).
- переименовать папку digitalchief-main в digitalchief и перейти в неё
- создать образ Docker на основе скрипта, находящегося в папке 
digitalchief\src\main\resources\db_scripts, командой 
docker build -t digital_chief_db-image .
- создать контейнер БД при командой 
docker run --name digital_chief_db-container -p 5432:5432 -d digital_chief_db-image
- далее Вы можете осуществить удобный просмотр БД при помощи различных средств,
я использую pgAdmin 4

3.2. Сборка и запуск приложения.
- выполнить команду mvn clean install из корневой папки проекта digitalchief
- перейти на уровень выше папки digitalchief в папку target
- выполнить команду java -jar digitalchief-0.0.1-SNAPSHOT.jar

3.3. Проверка работы приложения с помощью Postman.
- Импортировать коллекции в Postman из папки digitalchief\src\main\resources\postman
- Выполнить последовательно сверху вниз все запросы из departments_collection
- Выполнить последовательно сверху вниз все запросы из employees_collection

