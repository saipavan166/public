package com.klef.jfsd.springboot.JANATA.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.JANATA.model.Admin;
import com.klef.jfsd.springboot.JANATA.model.Citizen;
import com.klef.jfsd.springboot.JANATA.model.Department;
import com.klef.jfsd.springboot.JANATA.model.Issue;
import com.klef.jfsd.springboot.JANATA.model.Politician;
import com.klef.jfsd.springboot.JANATA.repository.AdminRepository;
import com.klef.jfsd.springboot.JANATA.repository.CitizenRepository;
import com.klef.jfsd.springboot.JANATA.repository.DepartmentRepository;
import com.klef.jfsd.springboot.JANATA.repository.IssueRepository;
import com.klef.jfsd.springboot.JANATA.repository.PoliticianRepository;

import jakarta.persistence.EntityNotFoundException;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private PoliticianRepository politicianRepository;
	
	@Autowired
	private DepartmentRepository departmentRepository;
	
	@Autowired
	private CitizenRepository citizenRepository;
	
	@Autowired
	private IssueRepository issueRepository;

	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public String AddPolitician(Politician pol) {
		politicianRepository.save(pol);
		return "Politician Added Successfully";
	}

	@Override
	public String AddDepartment(Department dept) {
		departmentRepository.save(dept);
		return "Department Added Successfully";
	}

	@Override
	public List<Politician> viewAllPoliticians() {
		return politicianRepository.findAll();
	}

	@Override
	public String deletepolitician(int pid) {
		politicianRepository.deleteById(pid);
		return "Politician Deleted Successfully";
	}

	@Override
	public List<Department> viewAllDepartments() {
		return departmentRepository.findAll();
	}

	@Override
	public String deleteDepartment(String did) {
		departmentRepository.deleteById(did);
		return "Department Deleted Successfully";
	}

	/* @Override
	    public Politician getPoliticianById(int pid) {
	        Optional<Politician> politician = politicianRepository.findById(pid);
	        return politician.orElseThrow(() -> new EntityNotFoundException("Politician not found"));
	    }

	    @Override
	    public String updatePolitician(Politician pol) {
	        politicianRepository.save(pol);
	        return "Politician Updated Successfully";
	    }*/
	
	
	public Politician findPoliticianById(int id) {
	    return politicianRepository.findById(id)
	            .orElseThrow(() -> new EntityNotFoundException("Politician not found"));
	}

	@Override
	public void updatePolitician(Politician politician) {
	    politicianRepository.save(politician);
	}
	
	@Override
	public Department findDepartmentById(String id) {
	    return departmentRepository.findById(id)
	            .orElseThrow(() -> new EntityNotFoundException("Department not found"));
	}

	@Override
	public void updateDepartment(Department department) {
	    departmentRepository.save(department);
	}

	@Override
	public List<Citizen> viewAllCitizens() {
		return citizenRepository.findAll();
	}

	@Override
	public String updateCitizenStatus(String status, int eid) {
		citizenRepository.updateCitizenStatus(status, eid);
		return "Citizen Status Updated Successfully";
	}

	@Override
	public String deleteCitizen(int cid) {
		citizenRepository.deleteById(cid);
		return "Citizen Deleted Successfully";
	}


	
	@Override
    public List<Issue> getAllIssues() {
        return issueRepository.findAll();
    }

    @Override
    public List<Issue> findIssuesByStatus(String status) {
        return issueRepository.findByStatus(status);
    }

	@Override
	public long politicianscount() {
		return politicianRepository.count();
	}

	@Override
	public long departmentscount() {
		return departmentRepository.count();
	}

	@Override
	public long citizenscount() {
		return citizenRepository.count();
	}

	
	

	@Override
	public String addissue(Issue is) {
		
		  issueRepository.save(is);
		  
		  return "Issue Reported Successfully";
	}

	

}
