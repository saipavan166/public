package com.klef.jfsd.springboot.JANATA.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.JANATA.model.Citizen;
import com.klef.jfsd.springboot.JANATA.model.Issue;
import com.klef.jfsd.springboot.JANATA.repository.CitizenRepository;
import com.klef.jfsd.springboot.JANATA.repository.IssueRepository;

@Service
public class CitizenServiceImpl  implements CitizenService
{
	@Autowired
	private CitizenRepository citizenRepository;
	
	@Autowired
	private IssueRepository issueRepository;

	@Override
	public String CitizenRegistration(Citizen citizen) {
		citizenRepository.save(citizen);
		return "Citizen Registered Successfully";
	}

	@Override
	public Citizen checkCitizenLogin(String caadharno, String cpassword) {
		// TODO Auto-generated method stub
		return citizenRepository.checkCitizenLogin(caadharno, cpassword);
	}

	@Override
	public String updateCitizenProfile(Citizen citizen) 
	{
		Citizen c=citizenRepository.findById(citizen.getId()).get();
		c.setLastname(citizen.getLastname());
		c.setAddress(citizen.getAddress());
	    c.setFirstname(citizen.getFirstname());
	    c.setEmail(citizen.getEmail());
	    c.setMaritalstatus(citizen.getMaritalstatus());
	    citizenRepository.save(c);
	    return "Profile Updated Successfully";
		
	}

	@Override
	public Citizen displayCitizenID(int cid) {
		return citizenRepository.findById(cid).get();
	}

	@Override
	public String addIssue(Issue issue) {
		issueRepository.save(issue);
        return "Issue reported successfully!";
	}

	@Override
	public List<Issue> trackIssue(String name) {
		return issueRepository.findByReportedBy(name);
	}

	
}
