package com.klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klu.entity.Registration;

@Repository
public interface RegistrationRepository extends JpaRepository<Registration, Long>{
	@Query("select count(S) from Registration S")
	public Long countParticipants();
	
	@Query("select S from Registration S where S.eid=:eid")
	public List<Registration> fetchAllById(@Param("eid") Long eid);
	
	@Query("select count(S) from Registration S where S.contactno=:cno")
	public Long validateByMobileNo(@Param("cno") String cno);

}
