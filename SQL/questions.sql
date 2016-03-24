--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.341.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 01.03.2016 13:42:40
-- Версия сервера: 5.6.23-log
-- Версия клиента: 4.1
--

CREATE TABLE testingdb.questions (
  ID int(11) NOT NULL AUTO_INCREMENT,
  QUESTION varchar(255) DEFAULT NULL,
  PRIMARY KEY (ID)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;


SET NAMES 'utf8';

INSERT INTO testingdb.questions(ID, QUESTION) VALUES
(1, 'One color in winter and in summer');
INSERT INTO testingdb.questions(ID, QUESTION) VALUES
(2, 'What is goin on?');
INSERT INTO testingdb.questions(ID, QUESTION) VALUES
(3, 'What the difference?');
INSERT INTO testingdb.questions(ID, QUESTION) VALUES
(4, 'What is my favorite color?');
INSERT INTO testingdb.questions(ID, QUESTION) VALUES
(5, 'What is my favorite music group?');
INSERT INTO testingdb.questions(ID, QUESTION) VALUES
(6, 'What is my name?');
INSERT INTO testingdb.questions(ID, QUESTION) VALUES
(7, 'Who am I?');