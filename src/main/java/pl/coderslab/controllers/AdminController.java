package pl.coderslab.controllers;

import java.io.IOException;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import pl.coderslab.entities.JsonData;
import pl.coderslab.entities.Patient;
import pl.coderslab.entities.Visit;
import pl.coderslab.repositories.PatientRepository;
import pl.coderslab.repositories.ServiceRepository;
import pl.coderslab.repositories.VisitRepository;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {

	@Autowired
	PatientRepository patientRepo;
	@Autowired
	VisitRepository visitRepo;
	@Autowired
	ServiceRepository serviceRepo;
	
	@RequestMapping("/showAll")
	public String showAll(Model model) {
		model.addAttribute("patients",patientRepo.findAll());
		return "patients";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	@GetMapping("/delete/{id}")
	public String patientDelete(@PathVariable long id, Model model) {
		model.addAttribute("patient", patientRepo.findOne(id));
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
	
//	@GetMapping("/edit/{id}")
//	public String patientEdit(@PathVariable long id, Model model) {
//		model.addAttribute("patient", patientRepo.findOne(id));
//		return "editPatient";
//	}
//	@PostMapping("/edit/{id}")
//	public String patientEdit(@Valid Patient patient, BindingResult result) {
//		if(result.hasErrors())
//		{
//			return "editPatient";
//					
//		}
//		patientRepo.save(patient);
//		return "redirect:/showAll";
//	}
	
	
	@GetMapping("showPatient/details/{id}")
	@ResponseBody
	public long editVisit(@PathVariable long id) {
		
		return id;
	}
	
	
	@RequestMapping(value = "showPatient/details/{id}", method = RequestMethod.POST, produces = "application/json")
	@ResponseBody
	  public String editVisit(@RequestBody JsonData jsonData) {
		
			Visit visit = visitRepo.findById(jsonData.getId());
			visit.setDescriptionOfVisit(jsonData.getDescriptionOfVisit());
			visitRepo.save(visit);
	    return "{\"success\":1}";
	  }
	
	
	
//	@PostMapping("showPatient/details/{id}")
//	@ResponseBody
//	public Visit editVisit(@RequestBody String visit) {
//		ObjectMapper mapper = new ObjectMapper();		
//		try {
//			Visit editedVisit = mapper.readValue(visit, Visit.class);
//			visitRepo.save(editedVisit);	
//			return editedVisit;
//		} catch (JsonParseException e) {
//			e.printStackTrace();
//		} catch (JsonMappingException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}		
//		return null;
//	}
	
	

	@RequestMapping("/calendar")
	public String viewVisits(Model model) {
		model.addAttribute("visits", visitRepo.findAll());
		return "calendar";		
	}
	
	@GetMapping("/newvisit/{id}")
	public String newVisit(@PathVariable long id, Model model) {
		model.addAttribute("visit", visitRepo.findOne(id));
		return "newVisit";
	}
	
	@PostMapping("/newvisit/{id}")
	public String newVisit( @Valid Visit visit, BindingResult result) {
//		if(result.hasErrors())
//		{
//			return "newVisit";
//					
//		}
		visitRepo.save(visit);
		return "redirect:/calendar";
		
		
	}
}
