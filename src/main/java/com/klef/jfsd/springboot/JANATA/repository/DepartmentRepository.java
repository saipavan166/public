package com.klef.jfsd.springboot.JANATA.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.JANATA.model.Department;

public interface DepartmentRepository extends JpaRepository<Department, String> 
{
	@Query("select d from Department d where d.Departmentid=?1 and d.password=?2")
	public Department checkdepartmentlogin(String departmentid , String password);
}
