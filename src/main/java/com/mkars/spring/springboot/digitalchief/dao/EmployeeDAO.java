package com.mkars.spring.springboot.digitalchief.dao;

import com.mkars.spring.springboot.digitalchief.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();
    public void saveEmployee(Employee employee);
    public Employee getEmployee(int id);
    public void deleteEmployee(int id);
}
