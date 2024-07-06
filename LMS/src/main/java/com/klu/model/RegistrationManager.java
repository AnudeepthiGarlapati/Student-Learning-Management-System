package com.klu.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.klu.entity.Department;
import com.klu.entity.Registration;
import com.klu.repository.DepartmentRepository;
import com.klu.repository.RegistrationRepository;

@Service
public class RegistrationManager {
	@Autowired
	RegistrationRepository SR;
	@Autowired
	DepartmentRepository ER;
	public List<String> getEvents()
	{
		List<String> list=new ArrayList<String>();
		for(Department E:ER.findAll())
		{
			list.add(toJsonString(E));
		}
		return list;
	}
	public String registration(Registration S)
	{
		if(SR.validateByMobileNo(S.getContactno())>0)
			return "Already registered in another event";
		SR.save(S);
		return "Registration Successfully, No. of participants: "+SR.countParticipants();
	}
	public String toJsonString(Object obj)
	{
		GsonBuilder builder=new GsonBuilder();
		Gson G=builder.create();
		return G.toJson(obj);
	}
	public List<String> participantsList(Long eid)
	{
		List<String> list=new ArrayList<String>();
		for(Registration S: SR.fetchAllById(eid))
		{
			list.add(toJsonString(S));
		}
		return list;
	}
	public String updateDetails(Long id,Registration S)
	{
		Registration tmp=SR.findById(id).get();
		tmp.setName(S.getName());
		tmp.setContactno(S.getContactno());
		tmp.setCollegename(S.getCollegename());
		tmp.setAddress(S.getAddress());
		tmp.setEmailid(S.getEmailid());
		
		SR.save(tmp);
		return "Data has been updated";
	}
	public String cancelRegistration(Long id)
	{
		SR.deleteById(id);
		return "Registration has been canceled";
	}
	public String readDetails(Long id)
	{
		Registration tmp=SR.findById(id).get();
		return toJsonString(tmp);
	}

}
