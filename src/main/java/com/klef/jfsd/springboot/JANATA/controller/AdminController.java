package com.klef.jfsd.springboot.JANATA.controller;

import java.util.List;
//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.JANATA.model.Admin;
import com.klef.jfsd.springboot.JANATA.model.Citizen;
import com.klef.jfsd.springboot.JANATA.model.Department;
import com.klef.jfsd.springboot.JANATA.model.Issue;
import com.klef.jfsd.springboot.JANATA.model.Politician;
import com.klef.jfsd.springboot.JANATA.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		Admin admin = adminService.checkadminlogin(auname, apwd);
		if(admin!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("admin", admin);
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@GetMapping("addpolitician")
	public ModelAndView addpolitician()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addpolitician");
		return mv;
	}
	
	@PostMapping("insertpolitician")
	public ModelAndView insertpolitician(HttpServletRequest request)
	   {
		String name = request.getParameter("pname");
	    String party = request.getParameter("pparty");
	    String constituency = request.getParameter("pconstituency");
	    String position = request.getParameter("pposition");
	    String contactInfo = request.getParameter("pcontact_info");
	    String password = request.getParameter("ppassword");
	    
	    Politician politician = new Politician();
	    politician.setName(name);
	    politician.setParty(party);
	    politician.setConstituency(constituency);
	    politician.setPosition(position);
	    politician.setContactInfo(contactInfo);
	    politician.setPassword(password);
	    
	    String msg = adminService.AddPolitician(politician);
	    
	    ModelAndView mv = new ModelAndView("addsuccess");
	    mv.addObject("message", msg);
	    return mv;

	   }
	
	@GetMapping("adddepartment")
	public ModelAndView adddepartment()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adddepartment");
		return mv;
	}
	
	@PostMapping("insertdepartment")
	public ModelAndView insertDepartment(HttpServletRequest request) {
	  
	    String departmentId = request.getParameter("depid");
	    String name = request.getParameter("dname");
	    String constituency = request.getParameter("pconstituency");
	    String description = request.getParameter("ddescription");
	    String contactEmail = request.getParameter("dcontact_email");
	    String password = request.getParameter("dpassword");

	    
	    Department department = new Department();
	    department.setDepartmentid(departmentId);
	    department.setName(name);
	    department.setConstituency(constituency);
	    department.setDescription(description);
	    department.setContactEmail(contactEmail);
	    department.setPassword(password);
	    
	    String msg = adminService.AddDepartment(department);

	   
	    ModelAndView mv = new ModelAndView("addsuccess");
	    mv.addObject("message", msg);
	    return mv;
	}
	
	@GetMapping("managepoliticians")
    public ModelAndView viewallemps()
    {
      ModelAndView mv = new ModelAndView();
      List<Politician> politicianslist = adminService.viewAllPoliticians();
      
      mv.setViewName("managepoliticians");
      mv.addObject("politicianslist",politicianslist);
      long count =  adminService.politicianscount();
      mv.addObject("polcount", count);
      return mv;
    }
	
	
	
	
	
	
	@GetMapping("deletepolitician")
	public String deletepolitician(@RequestParam("id") int pid)
	{
		adminService.deletepolitician(pid);
		return "redirect:/managepoliticians";
	}
	
	@GetMapping("managedepartments")
    public ModelAndView viewalldepartments()
    {
      ModelAndView mv = new ModelAndView();
      List<Department> departmentslist = adminService.viewAllDepartments();
      
      mv.setViewName("managedepartments");
      
      mv.addObject("departmentslist",departmentslist);
      long count =  adminService.departmentscount();
      mv.addObject("deptcount", count);
      return mv;
    }
	
	
	
	@GetMapping("searchpolitician")
	public ModelAndView searchPolitician() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("searchpolitician"); // This corresponds to searchpolitician.jsp
	    return mv;
	}


	@GetMapping("updatepolitician")
	public ModelAndView showUpdatePoliticianForm(@RequestParam("id") int id) {
	    ModelAndView mv = new ModelAndView("updatepolitician");
	    Politician politician = adminService.findPoliticianById(id);
	    mv.addObject("politician", politician);
	    return mv;
	}

	@PostMapping("updatepolitician")
	public String updatePolitician(
	        @RequestParam("id") int id,
	        @RequestParam("name") String name,
	        @RequestParam("party") String party,
	        @RequestParam("constituency") String constituency,
	        @RequestParam("position") String position,
	        @RequestParam("contactInfo") String contactInfo,
	        @RequestParam("password") String password) {
	    
	    // Fetch the existing politician record
	    Politician politician = adminService.findPoliticianById(id);
	    
	    // Update only the necessary fields
	    politician.setName(name);
	    politician.setParty(party);
	    politician.setConstituency(constituency);
	    politician.setPosition(position);
	    politician.setContactInfo(contactInfo);
	    
	    // Update password only if a new one is provided
	    if (password != null && !password.isEmpty()) {
	        politician.setPassword(password);
	    }
	    
	    // Save the updated politician
	    adminService.updatePolitician(politician);
	    
	    return "redirect:/managepoliticians";
	}




	
	@GetMapping("updatedepartment")
	public ModelAndView showUpdateDepartmentForm(@RequestParam("id") String id) {
	    ModelAndView mv = new ModelAndView("updatedepartment");
	    Department department = adminService.findDepartmentById(id);
	    mv.addObject("department", department);
	    return mv;
	}

	@PostMapping("updatedepartment")
	public String updateDepartment(
	        @RequestParam("id") String id,
	        @RequestParam("name") String name,
	        @RequestParam("constituency") String constituency,
	        @RequestParam("description") String description,
	        @RequestParam("contactEmail") String contactEmail,
	        @RequestParam("password") String password) {
		
	    
	    Department department = adminService.findDepartmentById(id);
	    department.setName(name);
	    department.setConstituency(constituency);
	    department.setDescription(description);
	    department.setContactEmail(contactEmail);
	    
	    // Only update the password if a new one is provided
	    if (password != null && !password.isEmpty()) {
	        department.setPassword(password);
	    }
	    
	    adminService.updateDepartment(department);
	    return "redirect:/managedepartments";
	}
	
	@GetMapping("deletedepartment")
	public String deletedepartment(@RequestParam("id") String did)
	{
		adminService.deleteDepartment(did);
		return "redirect:/managedepartments";
	}
	
	@GetMapping("managecitizens")
	public ModelAndView managecitizens()
	{
	      ModelAndView mv = new ModelAndView();
	      List<Citizen> citizenlist = adminService.viewAllCitizens();
	      mv.setViewName("managecitizens");
	      
	      mv.addObject("citizenlist",citizenlist);
	      long count =  adminService.citizenscount();
	      mv.addObject("citizencount", count);
	      return mv;
	}
	
	@GetMapping("deletecitizen")
	public String deletecitizen(@RequestParam("id") int cid)
	{
		adminService.deleteCitizen(cid);
		return "redirect:/managecitizens";
	}
	
	@GetMapping("updatestatus")
	public String updatestatus(@RequestParam("id")  int eid,@RequestParam("status")  String status)
	{	
		adminService.updateCitizenStatus(status, eid);
		return "redirect:/managecitizens";
	}
	
	@GetMapping("viewissues")
	public ModelAndView viewIssues(HttpServletRequest request) {
	    String status = request.getParameter("status");
	    List<Issue> issues;

	    if ("Reported".equals(status) || "In Progress".equals(status) || "Resolved".equals(status)) {
	        issues = adminService.findIssuesByStatus(status);
	    } else {
	        issues = adminService.getAllIssues(); 
	    }

	    request.setAttribute("issues", issues);
	    ModelAndView mv = new ModelAndView();
	    
	    mv.setViewName("view-issues");
	    //return "view-issues";
	    return mv;
	}

	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("admin");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("adminsessionexpiry")
	public ModelAndView adminsessionexpiry(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminsessionexpiry");
		return mv;
	}
	
	
	
	
	
	
	
	@GetMapping("reportissuepage")
	public ModelAndView reportissuepage() {
		ModelAndView mv = new ModelAndView("reportissuepage");
		return mv;
	}
	
	@PostMapping("submitIssue")
	public ModelAndView submitIssue(HttpServletRequest request) {
		
		
		
	   String t = request.getParameter("title");
	   String d =	request.getParameter("description");
	   String is =request.getParameter("issueType");
	   String l =request.getParameter("location");
	   String r =request.getParameter("reportedBy");
	   String c =request.getParameter("constituency");
	   String cr =request.getParameter("createdDate");
	   String u =request.getParameter("urgencyLevel");
	   
	  // status, priority, assignedTo, and updatedDate,
	   String status = "Reported";
	   String priority = null;
	   String assignedto = null;
	   String updateddate= null;
	   
	   Issue i = new Issue();
	   i.setTitle(t);
	   i.setDescription(d);
	   i.setIssueType(is);
	   i.setLocation(l);
	   i.setReportedBy(r);
	   i.setConstituency(c);
	   i.setCreatedDate(cr);
	   i.setUrgencyLevel(u);
	   i.setStatus(status);
	   i.setPriority(priority);
	   i.setAssignedTo(assignedto);
	   i.setUpdatedDate(updateddate);
	   
	   
	   String msg = adminService.addissue(i);
	   ModelAndView mv = new ModelAndView("Issueadded");
	   mv.addObject("message", msg);
		
		return mv;
	}
	
}
