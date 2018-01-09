package pl.coderslab.controllers;

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

@Controller
public class PatientController {

	@Autowired
	PatientRepository patientRepo;
	
	

	
	@GetMapping("/show")
	public String showDetails(Model model, HttpServletRequest request) {
		Patient patient= (Patient) request.getSession().getAttribute("logged");
		model.addAttribute("patient", patient);
		return "accountForm";
	}
	
	
	@RequestMapping("/showAll")
	public String showAll(Model model) {
		model.addAttribute("patients",patientRepo.findAll());
		return "patients";
	}
	@GetMapping("/add")
	public String patientAdd(Model model) {
		model.addAttribute("patient", new Patient());
		return "addPatient";
	}
	
	@PostMapping("/add")
	public String patientAdd(@Valid Patient patient, BindingResult result) {
		if(result.hasErrors())
		{
			return "addPatient";
					
		}
		patientRepo.save(patient);
		return "redirect:/showAll";
	}
	
	@GetMapping("/edit/{id}")
	public String patientEdit(@PathVariable long id, Model model) {
		model.addAttribute("user", patientRepo.findOne(id));
		return "editPatient";
	}
	@PostMapping("/edit/{id}")
	public String patientEdit(@Valid Patient patient, BindingResult result) {
		if(result.hasErrors())
		{
			return "editPatient";
					
		}
		patientRepo.save(patient);
		return "redirect:/showAll";
	}
	
	@GetMapping("/delete/{id}")
	public String patientDelete(@PathVariable long id, Model model) {
		model.addAttribute("user", patientRepo.findOne(id));
		return "deletePatient";
	}
	@PostMapping("/delete/{id}")
	public String userDelete(@Valid Patient patient, BindingResult result) {
		if(result.hasErrors())
		{
			return "deletepatient";
					
		}
		patientRepo.delete(patient);
		return "redirect:/showAll";
	}
	
	
}

