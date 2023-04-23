package com.mkars.spring.springboot.digitalchief.controller;

import com.mkars.spring.springboot.digitalchief.entity.Department;
import com.mkars.spring.springboot.digitalchief.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class DepartmentController {
    @Autowired
    private DepartmentService departmentService;

    @GetMapping("/departments")
    public List<Department> showAllDepartments(){
        return departmentService.getAllDepartments();
    }

    @GetMapping("/departments/{id}")
    public Department getDepartment(@PathVariable int id){
        return departmentService.getDepartment(id);
    }

    @PostMapping("/departments")
    public Department addNewDepartment(@RequestBody Department department){
        departmentService.saveDepartment(department);
        return department;
    }

    @PutMapping("/departments")
    public Department updateDepartment(@RequestBody Department department){
        departmentService.saveDepartment(department);
        return department;
    }

    @DeleteMapping("/departments/{id}")
    public String deleteDepartment(@PathVariable int id){
        departmentService.deleteDepartment(id);
        return "Department with ID = " + id + " was deleted";
    }
}
