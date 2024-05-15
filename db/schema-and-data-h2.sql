-- H2 Script
DROP SCHEMA IF EXISTS spring_security;
CREATE SCHEMA IF NOT EXISTS spring_security;

SET SCHEMA spring_security;

-- Table user
DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45),
  email VARCHAR(45),
  phone VARCHAR(45),
  password VARCHAR(128),
  isEnabled TINYINT UNSIGNED DEFAULT 1 COMMENT '0:不可用 1:可用',
  type TINYINT,
  creatAt DATETIME
);

-- Insert data into user table
INSERT INTO user (id, name, email, phone, password, isEnabled, type, creatAt) VALUES
(1, 'boss', 'boss@gmail.com', '123', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 1, 2, CURRENT_TIMESTAMP),
(2, 'manager', 'manager@gmail.com', '1234', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 1, 2, CURRENT_TIMESTAMP),
(3, 'employee', 'employee@gmail.com', '12345', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 1, 2, CURRENT_TIMESTAMP),
(4, 'disemployee', 'disemployee@gmail.com', '123456', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 0, 2, CURRENT_TIMESTAMP),
(5, 'personal', 'personal@gmail.com', '123123123', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC', 1, 1, CURRENT_TIMESTAMP);

-- Table role
DROP TABLE IF EXISTS role;
CREATE TABLE role (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45)
);

-- Insert data into role table
INSERT INTO role (id, name) VALUES
(1, 'ROLE_PERSONAL'),
(2, 'ROLE_BOSS'),
(3, 'ROLE_MANAGER'),
(4, 'ROLE_EMPLOYEE');

-- Table user_role
DROP TABLE IF EXISTS user_role;
CREATE TABLE user_role (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  userId BIGINT,
  roleId BIGINT
);

-- Insert data into user_role table
INSERT INTO user_role (id, userId, roleId) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 3),
(6, 2, 4),
(7, 2, 1),
(8, 3, 1),
(9, 3, 4),
(10, 4, 1),
(11, 4, 4),
(12, 5, 1);
