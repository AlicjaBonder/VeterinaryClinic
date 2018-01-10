package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import pl.coderslab.entities.Visit;
import pl.coderslab.repositories.VisitRepository;

public class VisitConverter implements Converter<String, Visit>{


	@Autowired
	private VisitRepository visitRepository;
	
	
	public Visit convert(String source) {
		Visit visit = visitRepository.findOne(Long.parseLong(source));
		return visit;
	}

	
	
}