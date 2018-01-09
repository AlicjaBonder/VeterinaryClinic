package pl.coderslab.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;


@Entity
@Table(name = "patient")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private String patientName;


	private String ownerLastname;

	private long phone;
	
	private String password;

	//@Column(unique = true, length = 30)
	//@Email
	private String email;

	private String street;

	private String postcode;

	private String city;

	private String diagnosis;

	@OneToOne(mappedBy = "patient", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "species_id")
	private Species species;

	@OneToMany(mappedBy = "patient", cascade = CascadeType.ALL)
	private List<Visit> visits = new ArrayList<Visit>();

	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getOwnerLastname() {
		return ownerLastname;
	}

	public void setOwnerLastname(String ownerLastname) {
		this.ownerLastname = ownerLastname;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public Species getSpecies() {
		return species;
	}

	public void setSpecies(Species species) {
		this.species = species;
	}

	public List<Visit> getVisits() {
		return visits;
	}

	public void setVisits(List<Visit> visits) {
		this.visits = visits;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
