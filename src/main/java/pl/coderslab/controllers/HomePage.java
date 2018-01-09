package pl.coderslab.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import pl.coderslab.entities.Patient;
import pl.coderslab.repositories.PatientRepository;



@Controller
public class HomePage {
	
	@Autowired
	PatientRepository patientRepo;

	@RequestMapping("")
	public String home() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		return "loginForm";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String email,@RequestParam String password,HttpSession session, Model model) {
		
		Patient patient = patientRepo.findFirstByEmail(email);
		
		if(patient != null && BCrypt.checkpw(password, patient.getPassword()))
		{
			session.setAttribute("logged", patient);
		}else {
				model.addAttribute("info","Błędny login lub hasło");
				session.setAttribute("logged", null);
				return "loginForm";
		}
		return "redirect:/logged";
		
	}
	
	@GetMapping("/logout")
	@ResponseBody
	public String logout(HttpSession session) {
		session.setAttribute("loggedUser",null);
		return "Zostałeś wylogowany";
	}
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		model.addAttribute("patient", new Patient());
		return "patientForm";

	}

	@PostMapping("/register")
	public String registerPatient(@Valid @ModelAttribute Patient patient, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "patientForm";
		} else {
			patient.setPassword(BCrypt.hashpw(patient.getPassword(), BCrypt.gensalt()));
			patientRepo.save(patient);
			model.addAttribute("patient", patient);

			return "redirect:/";
		}
	}
	
	@GetMapping("/logged")
	public String showAddBookForm( Model model, HttpSession session){

		if(session.getAttribute("loggedUser") != null)
		{
			model.addAttribute("info", "jesteś zalogowany");
			
		}
		return "redirect:/show";
			
	}
}


