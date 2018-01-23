package pl.coderslab.controllers;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pl.coderslab.entities.Patient;
import pl.coderslab.repositories.PatientRepository;
import pl.coderslab.repositories.VisitRepository;

@Controller
public class PatientController {

	@Autowired
	PatientRepository patientRepo;
	
	@Autowired
	VisitRepository visitRepo;

	
	@GetMapping("/show")
	public String showDetails(Model model, HttpServletRequest request) {
		Patient patient= (Patient) request.getSession().getAttribute("logged");
		model.addAttribute("patient", patient);
		model.addAttribute("visits", visitRepo.findByPatientId(patient.getId()));
		return "accountForm";
	}

	@GetMapping("/showPatient/{id}")
	public String showDetailsId(Model model,@PathVariable long id) {
		model.addAttribute("p", patientRepo.findOne(id));
		model.addAttribute("visits", visitRepo.findByPatientId(id));
		return "showDetails";
	}
	
	
//	 @GetMapping("/edit/{id}")
//	 public String patientEdit(@PathVariable long id, Model model) {
//	 model.addAttribute("patient", patientRepo.findOne(id));
//	 return "editPatient";
//	 }
//	 @PostMapping("/edit/{id}")
//	 public String patientEdit(@Valid Patient patient, BindingResult result) {
//	 if(result.hasErrors())
//	 {
//	 return "editPatient";
//	
//	 }
//	 patientRepo.save(patient);
//	 return "redirect:/show";
//	 }
	

	
	
}

