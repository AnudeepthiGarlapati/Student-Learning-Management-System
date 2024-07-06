package com.klu.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.Registration1;

@Repository
public interface Registration1Repository extends JpaRepository<Registration1, Long>{
	@Query("select count(S) from Registration1 S")
	public Long countParticipants();
	
	@Query("select S from Registration1 S where S.eid=:eid")
	public List<Registration1> fetchAllById(@Param("eid") Long eid);
	
	@Query("select count(S) from Registration1 S where S.contactno=:cno")
	public Long validateByMobileNo(@Param("cno") String cno);

}

