package com.klef.jfsd.springboot.JANATA.service;

import java.util.List;

import com.klef.jfsd.springboot.JANATA.model.Issue;
import com.klef.jfsd.springboot.JANATA.model.Politician;

public interface PoliticianService 
{
	public Politician checkPoliticainlogin(String name, String password);
	
	public  List<Issue> viewallissues();

	
	
	public String updatestatuspriorityassignedto(int id, String assignedTo, String priority, String status );
    public Politician displaypoliticanbyid(int pid);
    
    public String politicianprofileupdat(Politician poli);
    
    public List<Issue> findByConstituency(String constituency);
}
