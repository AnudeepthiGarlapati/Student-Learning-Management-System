package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.entity.Department;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Long>{

}
