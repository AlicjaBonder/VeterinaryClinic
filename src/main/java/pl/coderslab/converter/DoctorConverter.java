package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import pl.coderslab.entities.Doctor;
import pl.coderslab.repositories.DoctorRepository;




public class DoctorConverter  implements Converter<String, Doctor> {
	@Autowired
	private DoctorRepository doctorRepo;
	
	
	public Doctor convert(String source) {
		Doctor doctor = doctorRepo.findOne(Long.parseLong(source));
		return doctor;
	}
}
