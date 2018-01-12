package pl.coderslab.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entities.Patient;
import pl.coderslab.entities.Service;
import pl.coderslab.repositories.ServiceRepository;

@Controller
public class ServiceController {
	
	@Autowired
	ServiceRepository serviceRepo;
	
	@RequestMapping("/service")
	public String showService(Model model) {
		model.addAttribute("services", serviceRepo.findAll());
		return "services";
	}

	@GetMapping("/service/add")
	public String addService(Model model) {
		model.addAttribute("service",new Service());
		return "addService";
	}
	
	@PostMapping("/service/add")
	public String addService(@Valid Service service, BindingResult result) {
		if(result.hasErrors())
		{
			return "addService";
					
		}
		serviceRepo.save(service);
		return "redirect:/";
	}
	}
		
		

