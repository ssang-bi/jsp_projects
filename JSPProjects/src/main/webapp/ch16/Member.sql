-- Active: 1730859567065@@127.0.0.1@3306@jspbookdb
CREATE TABLE IF NOT EXISTS Member(
    id VARCHAR(20) NOT NULL,
    passwd VARCHAR(20),
    name VARCHAR(30),
    PRIMARY KEY (id)
);

SELECT * FROM Member;