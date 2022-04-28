create table sqlite_master
(
    type     text,
    name     text,
    tbl_name text,
    rootpage int,
    sql      text
);

INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'DEPARTMENT', 'DEPARTMENT', 2, 'CREATE TABLE DEPARTMENT
(
    ID   integer
        constraint DEPARTMENT_pk
            primary key autoincrement,
    NAME VARCHAR not null
)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'sqlite_sequence', 'sqlite_sequence', 3, 'CREATE TABLE sqlite_sequence(name,seq)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'DEPARTMENT_ID_uindex', 'DEPARTMENT', 4, 'CREATE UNIQUE INDEX DEPARTMENT_ID_uindex
    on DEPARTMENT (ID)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('index', 'DEPARTMENT_NAME_uindex', 'DEPARTMENT', 5, 'CREATE UNIQUE INDEX DEPARTMENT_NAME_uindex
    on DEPARTMENT (NAME)');
INSERT INTO sqlite_master (type, name, tbl_name, rootpage, sql) VALUES ('table', 'EMPLOYEE', 'EMPLOYEE', 7, 'CREATE TABLE "EMPLOYEE"
(
    ID       integer
        constraint EMPLOYEE_pk
            primary key autoincrement
        constraint CHIEF_ID
            references EMPLOYEE,
    NAME     VARCHAR,
    SALARY   integer,
    DEP_ID   integer
        constraint DEP_ID
            references DEPARTMENT,
    CHIEF_ID integer
)');
