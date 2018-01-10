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
	
	@Query("SELECT v FROM Visit v WHERE v.date >=:todayParam ORDER BY date asc, hour asc")
	List<Visit> customFutureVisits(@Param("todayParam") LocalDate todayParam);

}
