package ta.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ta.domain.Domain_Skills;

	@Repository
	public interface Repo_skills extends CrudRepository<Domain_Skills, String> {
	//	Domain_Skills findByskills(String skills);
		
		@Query(value = "SELECT * FROM TA_allocation.domain_skills where skills like %:skill%  ", nativeQuery = true)
		   List<Domain_Skills> findByskillsuggestions(@Param("skill") String skill);
		
	}

