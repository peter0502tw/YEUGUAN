package ta.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import ta.domain.Domain_IDEs;

@Repository
public interface Repo_IDEs extends CrudRepository<Domain_IDEs, String> {
	
//Domain_IDEs findByides(String ides);
	
	@Query(value = "SELECT * FROM TA_allocation.domain_ides where ides like %:ide%", nativeQuery = true)
	   List<Domain_IDEs> findByIDEssuggestions(@Param("ide") String ide);
	
	
	
}