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

import com.klu.entity.Registration1;
import com.klu.model.Registration1Manager;

@RestController
@RequestMapping("/registration1")
public class Registration1Controller {
	@Autowired
	Registration1Manager SM;
	
	@GetMapping("/departments1")
	public String events()
	{
		return SM.getEvents().toString();
	}
	@PostMapping("/register1")
	public String register(@RequestBody Registration1 S)
	{
		return SM.registration(S);
	}
	@GetMapping("/participantslist1/{eid}")
	public String participantslist(@PathVariable("eid") Long eid)
	{
		return SM.participantsList(eid).toString();
	}
	@PutMapping("/update1/{id}")
	public String update(@PathVariable("id") Long id,@RequestBody Registration1 S)
	{
		return SM.updateDetails(id, S);
	}
	@DeleteMapping("/cancel1/{id}")
	public String cancel(@PathVariable("id") Long id)
	{
		return SM.cancelRegistration(id);
	}
	@GetMapping("/read1/{id}")
	public String read(@PathVariable("id") Long id)
	{
		return SM.readDetails(id);
	}
}
