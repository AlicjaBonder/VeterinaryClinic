package pl.coderslab.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pl.coderslab.entities.Patient;

public interface PatientRepository extends JpaRepository<Patient, Long> {

	Patient findFirstById(long id);
	Patient findFirstByEmail(String email);
	@Query("SELECT patient FROM Patient patient WHERE patient.patientName LIKE %?1%")
	List <Patient> findByPatientName(String patientName);
}
