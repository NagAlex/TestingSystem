--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.341.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 01.03.2016 13:43:00
-- Версия сервера: 5.6.23-log
-- Версия клиента: 4.1
--

CREATE TABLE testingdb.answers (
  ID int(11) NOT NULL AUTO_INCREMENT,
  ANSWER varchar(255) DEFAULT NULL,
  IS_RIGHT bit(1) DEFAULT NULL,
  QUESTION_ID int(11) DEFAULT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT FKimmr0h5soamto0bx1p7grx5q6 FOREIGN KEY (QUESTION_ID)
  REFERENCES testingdb.questions (ID) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci;

SET NAMES 'utf8';

INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(1, 'Lamp', False, 1);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(2, 'Oak-tree', False, 1);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(3, 'Evergreen-tree', True, 1);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(4, 'Table', False, 1);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(5, 'It''s OK', True, 2);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(6, 'All right', False, 2);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(7, 'There is no difference', True, 3);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(8, 'There is some differonce', False, 3);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(9, 'I don''t know', False, 3);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(10, 'Black', False, 4);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(11, 'Yellow', False, 4);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(12, 'White', False, 4);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(13, 'Green', False, 4);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(14, 'Lime', False, 4);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(15, 'Light green', True, 4);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(16, 'Abba', False, 5);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(17, 'Ace of Base', True, 5);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(18, 'Qween', False, 5);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(19, 'Alexander', True, 6);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(20, 'Yoshimitsu', False, 6);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(21, 'Albert', False, 6);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(22, 'I am a programmer', True, 7);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(23, 'I am a doctor', False, 7);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(24, 'I am a driver', False, 7);
INSERT INTO testingdb.answers(ID, ANSWER, IS_RIGHT, QUESTION_ID) VALUES
(25, 'I am a teacher', False, 7);