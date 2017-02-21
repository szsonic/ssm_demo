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



CREATE TABLE employee
(
  id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  emp_no VARCHAR(10) COMMENT '员工工号',
  emp_name VARCHAR(20) COMMENT '员工姓名',
  emp_age INT(11) COMMENT '年龄',
  entry_date DATE,
  department_code VARCHAR(5),
  emp_phone VARCHAR(11)
);

INSERT INTO employee (emp_no, emp_name, emp_age, entry_date, department_code, emp_phone) VALUES ('0001','曹操',30,now(),'010',13012345678);
INSERT INTO employee (emp_no, emp_name, emp_age, entry_date, department_code, emp_phone) VALUES ('0002','刘备',25,now(),'011',13112345678);
INSERT INTO employee (emp_no, emp_name, emp_age, entry_date, department_code, emp_phone) VALUES ('0003','诸葛亮',26,now(),'000',13212345678);
INSERT INTO employee (emp_no, emp_name, emp_age, entry_date, department_code, emp_phone) VALUES ('0004','司马懿',27,now(),'010',13312345678);
INSERT INTO employee (emp_no, emp_name, emp_age, entry_date, department_code, emp_phone) VALUES ('0005','张辽',28,now(),'001',13412345678);
INSERT INTO employee (emp_no, emp_name, emp_age, entry_date, department_code, emp_phone) VALUES ('0006','陆逊',31,now(),'011',13512345678);



CREATE TABLE department
(
  id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  code VARCHAR(10) COMMENT '部门编码',
  parent_code VARCHAR(10)  COMMENT '父部门编码',
  department_name VARCHAR(20) COMMENT '部门名称',
  create_time DATE COMMENT '创建时间',
  update_time DATE COMMENT '修改时间'
);


INSERT INTO department (code, parent_code, department_name, create_time, update_time) VALUES ('000',null,'总部',now(),null);
INSERT INTO department (code, parent_code, department_name, create_time, update_time) VALUES ('010','000','人事部',now(),null);
INSERT INTO department (code, parent_code, department_name, create_time, update_time) VALUES ('011','000','财务部',now(),null);


SELECT *
FROM employee;

SELECT *
FROM department;