package com.mkars.spring.springboot.digitalchief.service;

import com.mkars.spring.springboot.digitalchief.entity.Department;

import java.util.List;

public interface DepartmentService {
    List<Department> getAllDepartments();

    public void saveDepartment(Department department);

    public Department getDepartment(int id);

    public void deleteDepartment(int id);
}
