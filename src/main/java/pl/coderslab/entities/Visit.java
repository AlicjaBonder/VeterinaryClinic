package pl.coderslab.entities;


import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="visits")
public class Visit {


	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
//	@NotNull
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate date;
	
//	@Min(8)
//	@Max(20)
	private int hour;
	
	@ManyToOne
	@JoinColumn(name="service_id")
	private Service service;
	
	@ManyToOne
	@JoinColumn(name="patient_id")
	private Patient patient;
	
	@ManyToOne
	@JoinColumn(name="doctor_id")
	private Doctor doctor;
	
	private String descriptionOfVisit;

	public String getDescriptionOfVisit() {
		return descriptionOfVisit;
	}

	public void setDescriptionOfVisit(String descriptionOfVisit) {
		this.descriptionOfVisit = descriptionOfVisit;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public int getHour() {
		return hour;
	}

	public void setHour(int hour) {
		this.hour = hour;
	}

	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	

}
