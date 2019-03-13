package ta.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import ta.domain.Domain_Enrol;
@Repository
public interface Repo_Enrol extends  CrudRepository<Domain_Enrol,String> {
	//Domain_Enrol findByid(String id);
	Domain_Enrol findBycandidates(String candidantes);
	List<Domain_Enrol> findByyear(String year);   
	
	   @Query(value = "SELECT * FROM TA_allocation.domain_enrol where candidates=:candidates && modulecode=:modulecode && year=:year", nativeQuery = true)
	   Optional<Domain_Enrol> findStatusEnrolled(@Param("candidates") String candidates,@Param("modulecode") String modulecode,@Param("year") String year);
	   
	   
	   @Query(value = "SELECT * FROM TA_allocation.domain_enrol where year=:year && modulecode=:modulecode", nativeQuery = true)
	   List<Domain_Enrol> find_total_applied_number(@Param("modulecode") String modulecode,@Param("year") String year);
	 
	   @Query(value = "SELECT count(id) FROM TA_allocation.domain_enrol where year=:year && candidates=:candidates", nativeQuery = true)
	   Integer CandidatesCountEnrol(@Param("candidates") String candidates,@Param("year") String year);
	   
	  
	   @Query(value = " SELECT * FROM TA_allocation.domain_enrol where year=:year && candidates=:candidates  &&modulecode!=:modulecode ", nativeQuery = true)
	   List<Domain_Enrol> find_total_applied_candidate(@Param("modulecode") String modulecode,@Param("year") String year,@Param("candidates") String candidates);

	   @Query(value = "SELECT Count(id)  FROM TA_allocation.domain_enrol where moduleid=:id", nativeQuery = true)
	   Integer CountApplied(@Param("id") String id); 
	  

	   List<Domain_Enrol>  findByCandidates(String id);
}