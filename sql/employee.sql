CREATE TABLE user
(
  id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  emp_no VARCHAR(10) COMMENT '员工工号',
  emp_name VARCHAR(20) COMMENT '员工姓名',
  emp_age INT(11) COMMENT '年龄',
  entry_date DATE,
  department_code VARCHAR(5),
  emp_phone VARCHAR(11)
);


