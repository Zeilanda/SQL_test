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

