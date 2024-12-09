package com.klef.jfsd.springboot.JANATA.service;

import java.util.List;

import com.klef.jfsd.springboot.JANATA.model.Citizen;
import com.klef.jfsd.springboot.JANATA.model.Issue;

public interface CitizenService
{
public String CitizenRegistration(Citizen citizen);
public Citizen checkCitizenLogin(String caadharno,String cpassword );
public String updateCitizenProfile(Citizen citizen);
public Citizen displayCitizenID(int cid);

public String addIssue(Issue issue) ;
public   List<Issue> trackIssue(String name); 
}
