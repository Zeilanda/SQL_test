create table DEPARTMENT
(
    ID   integer
        constraint DEPARTMENT_pk
            primary key autoincrement,
    NAME VARCHAR not null
);

create unique index DEPARTMENT_ID_uindex
    on DEPARTMENT (ID);

create unique index DEPARTMENT_NAME_uindex
    on DEPARTMENT (NAME);

INSERT INTO DEPARTMENT (ID, NAME) VALUES (1, 'Отдел кадров');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (2, 'Бухгалтерия');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (3, 'Производственный отдел');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (4, 'Отдел снабжения');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (5, 'Правление');
INSERT INTO DEPARTMENT (ID, NAME) VALUES (6, 'Отдел качества');
