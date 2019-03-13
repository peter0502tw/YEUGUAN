package ta.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import ta.domain.Domain_subject;

@Repository
public interface Repo_subject extends CrudRepository<Domain_subject, String> {
	
//Domain_IDEs findByides(String ides);
	
	@Query(value = "SELECT * FROM TA_allocation.domain_subject where subject like %:subject%", nativeQuery = true)
	   List<Domain_subject> findBylikesubject(@Param("subject") String subject);
	   
	   
	   
	   List<Domain_subject> findAll();
}