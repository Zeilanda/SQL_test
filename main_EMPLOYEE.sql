create table EMPLOYEE
(
    ID       integer
        constraint EMPLOYEE_pk
            primary key autoincrement
        references EMPLOYEE,
    NAME     VARCHAR,
    SALARY   integer,
    DEP_ID   integer
        references DEPARTMENT,
    CHIEF_ID integer
);

INSERT INTO EMPLOYEE (ID, NAME, SALARY, DEP_ID, CHIEF_ID) VALUES (1, 'Баранов Петр Евгеньевич', 150000, 2, null);
INSERT INTO EMPLOYEE (ID, NAME, SALARY, DEP_ID, CHIEF_ID) VALUES (2, 'Абрамова Карина Анатольевна', 60000, 2, 1);
INSERT INTO EMPLOYEE (ID, NAME, SALARY, DEP_ID, CHIEF_ID) VALUES (3, 'Колесов С.П.', 140000, 1, null);
INSERT INTO EMPLOYEE (ID, NAME, SALARY, DEP_ID, CHIEF_ID) VALUES (4, 'Колесов С.П.', 140000, 1, null);
