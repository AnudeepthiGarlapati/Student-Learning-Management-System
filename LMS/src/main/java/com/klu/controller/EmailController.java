package com.klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.klu.model.EmailManager;

@RestController
@RequestMapping("/mail")
public class EmailController {
	@Autowired
	EmailManager em;
	@GetMapping("/send/{fmail}/{tmail}/{subject}/{message}")
    public String send(@PathVariable("fmail") String fmail, @PathVariable("tmail") String tmail,@PathVariable("subject") String subject,@PathVariable("message") String message) {
	 return em.sendMail(fmail, tmail, subject, message);
	 
 }
}
