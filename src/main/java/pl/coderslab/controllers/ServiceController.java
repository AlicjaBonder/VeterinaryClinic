package pl.coderslab.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.repositories.ServiceRepository;

@Controller
public class ServiceController {
	
	@Autowired
	ServiceRepository serviceRepo;
	
	@RequestMapping("/service")
	public String showService(Model model) {
		model.addAttribute("services", serviceRepo.findAll());
		return "service";
	}

}

