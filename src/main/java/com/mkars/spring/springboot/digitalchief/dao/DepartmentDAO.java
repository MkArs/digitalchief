package com.mkars.spring.springboot.digitalchief.dao;

import com.mkars.spring.springboot.digitalchief.entity.Department;

import java.util.List;

public interface DepartmentDAO {
    public List<Department> getAllDepartments();
    public void saveDepartment(Department employee);
    public Department getDepartment(int id);
    public void deleteDepartment(int id);
}
