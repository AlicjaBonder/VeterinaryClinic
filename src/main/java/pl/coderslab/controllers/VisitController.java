package pl.coderslab.controllers;

import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import pl.coderslab.entities.Service;
import pl.coderslab.entities.Visit;
import pl.coderslab.repositories.PatientRepository;
import pl.coderslab.repositories.ServiceRepository;
import pl.coderslab.repositories.VisitRepository;

@Controller
public class VisitController {
	
	@Autowired
	VisitRepository visitRepo;
	
	@Autowired
	PatientRepository patientRepo;
	
	@Autowired
	ServiceRepository serviceRepo;
//	@RequestMapping("")
//	public String viewVisits(Model model) {
//		model.addAttribute("visits", visitRepository.customFutureVisits(new Date((new java.util.Date()).getTime())));
//		return "calendar";		
//	}
	
	@GetMapping("/visit/add/{id}")
	public String add(@PathVariable long id, Model model) {
		model.addAttribute("visit",new Visit());
		model.addAttribute("patient",patientRepo.findOne(id));
		return "addVisitForm";
	}
	
	@PostMapping("/visit/add/{id}")
	public String add(@PathVariable long id, BindingResult result, @Valid Visit visit, Model model) {
		
		if(result.hasErrors()) {
			model.addAttribute("visit",new Visit());
			model.addAttribute("patient",patientRepo.findOne(id));
			return "addVisitForm";
		}
		visit.setPatient(patientRepo.findOne(id));
		visitRepo.save(visit);
		return "redirect:/show";
	}

	@ModelAttribute("services")
	Collection<Service> getServices(){
		return serviceRepo.findAll();
	}
}
