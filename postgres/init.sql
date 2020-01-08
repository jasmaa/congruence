
CREATE TABLE users (
    ID SERIAL PRIMARY KEY,
    USERNAME VARCHAR(255) NOT NULL UNIQUE,
    PASSWORD VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(255) NOT NULL UNIQUE,
    VERIFIED_ACCOUNT BOOLEAN,
    USER_LEVEL INTEGER, /* 0:student, 1:instructor, 2:admin */
    ENROLLED_COURSES INTEGER[]
);

CREATE TABLE courses (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    ASSIGNMENTS INTEGER[]
);

CREATE TABLE assignments (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(255) NOT NULL,
    POINTS INTEGER
);

CREATE TABLE submissions (
    ID SERIAL PRIMARY KEY,
    SUBMIT_TIMESTAMP TIMESTAMP WITH TIME ZONE,
    SUBMITTER_ID INTEGER,
    POINTS_EARNED INTEGER
);

/* Create admin user */
INSERT INTO users (USERNAME, PASSWORD, EMAIL, VERIFIED_ACCOUNT, USER_LEVEL)
VALUES ('admin', '$2a$10$siCgGUWF8SLY3faKiy4bSOq3D5upZ6UZaoswP7XWPW6lP9PqwCMBO', 'admin@gmail.com', true, 2);