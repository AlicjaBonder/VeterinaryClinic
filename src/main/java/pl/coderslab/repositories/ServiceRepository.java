package pl.coderslab.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entities.Service;


public interface ServiceRepository extends JpaRepository<Service, Long> {

}
