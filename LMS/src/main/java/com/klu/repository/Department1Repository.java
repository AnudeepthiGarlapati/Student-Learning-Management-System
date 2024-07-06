package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.klu.entity.Department1;

@Repository
public interface Department1Repository extends JpaRepository<Department1, Long>{

}