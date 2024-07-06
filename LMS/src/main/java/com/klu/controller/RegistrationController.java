package com.klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klu.entity.Registration;
import com.klu.model.RegistrationManager;

@RestController
@RequestMapping("/registration")
public class RegistrationController {
	@Autowired
	RegistrationManager SM;
	
	@GetMapping("/departments")
	public String events()
	{
		return SM.getEvents().toString();
	}
	@PostMapping("/register")
	public String register(@RequestBody Registration S)
	{
		return SM.registration(S);
	}
	@GetMapping("/participantslist/{eid}")
	public String participantslist(@PathVariable("eid") Long eid)
	{
		return SM.participantsList(eid).toString();
	}
	@PutMapping("/update/{id}")
	public String update(@PathVariable("id") Long id,@RequestBody Registration S)
	{
		return SM.updateDetails(id, S);
	}
	@DeleteMapping("/cancel/{id}")
	public String cancel(@PathVariable("id") Long id)
	{
		return SM.cancelRegistration(id);
	}
	@GetMapping("/read/{id}")
	public String read(@PathVariable("id") Long id)
	{
		return SM.readDetails(id);
	}
}
