package ta.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import ta.domain.Domain_chosen_cadidates;

@Repository
public interface Repo_chosen_cadidates extends CrudRepository<Domain_chosen_cadidates, String> {

	@Query(value = "SELECT * FROM TA_allocation.domain_chosen_cadidates where candidates=:candidates  && year=:year", nativeQuery = true)
	List<Domain_chosen_cadidates> find_check_state_has_signed(@Param("candidates") String chosen_candidates,
			@Param("year") String year);

	@Query(value = "SELECT * FROM TA_allocation.domain_chosen_cadidates where modulecode=:modulecode  && year=:year", nativeQuery = true)
	List<Domain_chosen_cadidates> module_allocated_candidates(@Param("year") String year,
			@Param("modulecode") String modulecode);

	@Query(value = "SELECT * FROM TA_allocation.domain_chosen_cadidates where modulecode=:modulecode  &&  year=:year", nativeQuery = true)
	List<Domain_chosen_cadidates> find_module_chosen_bymodulecode_year(@Param("modulecode") String modulecode,
			@Param("year") String year);

	List<Domain_chosen_cadidates> findByProfessor(String id);

	@Query(value = "SELECT * FROM TA_allocation.domain_chosen_cadidates where professor=:id  &&  endorsment='0'", nativeQuery = true)
	List<Domain_chosen_cadidates> findByCandidates(@Param("id") String id);

	@Query(value = " SELECT * FROM TA_allocation.domain_chosen_cadidates where   endorsment='0'", nativeQuery = true)
	List<Domain_chosen_cadidates> findByCandidatesForManager();
	
	
	
	List<Domain_chosen_cadidates>	findByyear(String year);
	
	@Query(value = " SELECT * FROM TA_allocation.domain_chosen_cadidates where   candidates=:candidates", nativeQuery = true)
	List<Domain_chosen_cadidates> findBycandidate(@Param("candidates")String candidates);
	
	
}