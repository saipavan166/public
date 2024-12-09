package com.klef.jfsd.springboot.JANATA.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.JANATA.model.Citizen;

import jakarta.transaction.Transactional;

public interface CitizenRepository extends JpaRepository<Citizen, Integer>
{
   @Query("select c from Citizen c where c.aadharnumber=?1 and c.password=?2")
   public Citizen checkCitizenLogin(String aadharnumber,String pwd);
   
   @Query("update Citizen c set c.status=?1 where c.id=?2")
	@Modifying // DML
	@Transactional // to enable auto commit
	public int updateCitizenStatus(String status, int cid);
}
