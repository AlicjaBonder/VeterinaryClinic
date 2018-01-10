package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import pl.coderslab.entities.Service;
import pl.coderslab.repositories.ServiceRepository;

public class ServiceConverter implements Converter<String, Service> {
	
	@Autowired
	private ServiceRepository serviceRepository;
	
	
	public Service convert(String source) {
		Service service = serviceRepository.findOne(Long.parseLong(source));
		return service;
	}
	
	
	
}