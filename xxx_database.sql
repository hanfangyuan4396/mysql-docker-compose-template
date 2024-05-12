# xxx_database.sql

-- 创建数据库
CREATE DATABASE xxx_database;

-- 创建用户并授权数据库, %表示所有ip都可以访问
CREATE USER 'zhangsan'@'%' IDENTIFIED BY 'zhangsan123';
GRANT ALL PRIVILEGES ON xxx_database.* TO 'zhangsan'@'%';
FLUSH PRIVILEGES;

USE xxx_database;

-- 学生信息表
CREATE TABLE `students` (
  `id` VARCHAR(36) PRIMARY KEY COMMENT '学生ID',
  `student_name` VARCHAR(255) NOT NULL COMMENT '学生姓名'
);

INSERT INTO `students` (`id`, `student_name`) VALUES
('s1', '张三'),
('s2', '李四');
