package pl.coderslab.repositories;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import pl.coderslab.entities.Visit;


public interface VisitRepository extends JpaRepository<Visit, Long>{
	
	@Query("SELECT v FROM Visit v ORDER BY date asc, hour asc")
	List<Visit> customFindByDateAndTime();
	

	@Query("SELECT v FROM Visit v WHERE v.patient.id = ?1")
	List<Visit> findByPatientId(long id);
	@Query("SELECT v FROM Visit v WHERE v.id = ?1")
	Visit findById(long id);
	
}
