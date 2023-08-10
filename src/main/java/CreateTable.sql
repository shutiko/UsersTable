create database UsersTable;

create table UsersTable.PERSONS
(
    name           varchar(255)    not null,
    surname        varchar(255)    not null,
    age            int             not null CHECK ( age > 0 AND age <= 200),
    phone_number   bigint unsigned not null unique,
    city_of_living varchar(255)    not null,
    primary key (name, surname, age)
);

insert into UsersTable.PERSONS (name, surname, age, phone_number, city_of_living)
values ('Ivan', 'Ivanov', 25, 89254774535, 'Moscow'),
       ('Petr', 'Petrov', 33, 89154565568, 'Riga'),
       ('Petr', 'Menshov', 21, 89154544568, 'Moscow'),
       ('Evgeny', 'Lidov', 33, 89189565568, 'Irkutsk'),
       ('Evgeny', 'Muhin', 28, 89185465568, 'Izhevsk');
