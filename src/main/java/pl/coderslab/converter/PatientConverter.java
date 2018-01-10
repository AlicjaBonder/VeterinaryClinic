package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import pl.coderslab.entities.Patient;
import pl.coderslab.repositories.PatientRepository;

public class PatientConverter implements Converter<String, Patient> {
	
	@Autowired
	private PatientRepository patientRepository;
	
	
	public Patient convert(String source) {
		Patient patient = patientRepository.findOne(Long.parseLong(source));
		return patient;
	}

}
