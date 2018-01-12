package pl.coderslab.repositories;



import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import pl.coderslab.entities.Visit;


public interface VisitRepository extends JpaRepository<Visit, Long>{
	
	@Query("SELECT v FROM Visit v ORDER BY date asc, hour asc")
	List<Visit> customFindByDateAndTime();
	
	@Query("SELECT v FROM Visit v WHERE v.patient.id =:patientId AND v.date >=:todayParam ORDER BY v.date asc, v.hour asc ")
	List<Visit> customFindByPatientFuture(@Param("patientId") long patientId,
										  @Param("todayParam") LocalDate todayParam);
	
	@Query("SELECT v FROM Visit v WHERE v.patient.id =:patientId AND v.date <:todayParam ORDER BY v.date desc, v.hour desc ")
	List<Visit> customFindByPatientPast(@Param("patientId") long patientId,
										  @Param("todayParam") LocalDate todayParam);


	@Query("SELECT v FROM Visit v WHERE v.patient.id = ?1")
	List<Visit> findByPatientId(long id);
	@Query("SELECT v FROM Visit v WHERE v.id = ?1")
	Visit findById(long id);
	
}
