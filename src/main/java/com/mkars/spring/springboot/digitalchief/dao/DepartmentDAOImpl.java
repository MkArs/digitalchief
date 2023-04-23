package com.mkars.spring.springboot.digitalchief.dao;

import com.mkars.spring.springboot.digitalchief.entity.Department;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
public class DepartmentDAOImpl implements DepartmentDAO{

    @Autowired
    private EntityManager entityManager;

    @Override
    public List<Department> getAllDepartments() {
        Session session = entityManager.unwrap(Session.class);
        List<Department> allDepartments = session.createQuery("from Department", Department.class)
                .getResultList();
        return allDepartments;
    }

    @Override
    public void saveDepartment(Department department) {
        Session session = entityManager.unwrap(Session.class);
        session.saveOrUpdate(department);
    }

    @Override
    public Department getDepartment(int id) {
        Session session = entityManager.unwrap(Session.class);
        Department department = session.get(Department.class, id);
        return department;
    }

    @Override
    public void deleteDepartment(int id) {
        Session session = entityManager.unwrap(Session.class);
        Department department = session.get(Department.class, id);
        session.delete(department);
    }
}
