package com.klef.jfsd.springboot.JANATA.service;

import java.util.List;

import com.klef.jfsd.springboot.JANATA.model.Department;
import com.klef.jfsd.springboot.JANATA.model.Issue;

public interface DepartmentService {
	public Department checkdepartmentlogin(String departmentid , String password);

	public List<Issue> findByAssignedToAndConstituency(String assignedTo, String constituency);
	
	public String updateStatusandupdateDate(int id,String updateDate , String status);


}
