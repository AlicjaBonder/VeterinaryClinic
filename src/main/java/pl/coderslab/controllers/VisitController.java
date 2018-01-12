package pl.coderslab.controllers;

import java.time.LocalDate;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entities.Doctor;
import pl.coderslab.entities.Service;
import pl.coderslab.entities.Visit;
import pl.coderslab.repositories.DoctorRepository;
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
	DoctorRepository doctorRepo;
	
	@Autowired
	ServiceRepository serviceRepo;
	
	@GetMapping("/visit/add/{id}")
	public String add(@PathVariable long id, Model model) {
		model.addAttribute("visit",new Visit());
		model.addAttribute("patient",patientRepo.findOne(id));
		return "addVisitForm";
	}
	
	@PostMapping("/visit/add/{id}")
	public String add(@PathVariable long id,@Valid Visit visit, BindingResult result, Model model) {
		
		if(result.hasErrors()) {

			return "addVisitForm";
		}
//		List<Visit> visits = visitRepo.findAll();
//		for(Visit v : visits) {
//			if(v.getDate().equals(visit.getDate()) && v.getHour()==visit.getHour()) {
//				model.addAttribute("message", "Chosen term is not available. Please select a different one.");
//				return "addVisitForm";
//			}
//
		
		visit.setPatient(patientRepo.findOne(id));
		
		visitRepo.save(visit);
		return "redirect:/show";
	}

	@ModelAttribute("services")
	Collection<Service> getServices(){
		return serviceRepo.findAll();
	}
	@ModelAttribute("doctors")
	Collection<Doctor> getDoctors(){
		return doctorRepo.findAll();
	}
	
}
