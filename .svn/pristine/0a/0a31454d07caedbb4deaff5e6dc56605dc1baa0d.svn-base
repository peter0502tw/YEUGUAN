package ta.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ta.domain.Domain_interview;
@Repository
public interface Repo_interview extends  CrudRepository<Domain_interview,String> {
	
	   @Query(value = "SELECT * FROM TA_allocation.domain_interview where modulecode=:modulecode  &&  year=:year", nativeQuery = true)
	   List<Domain_interview> find_interview_bymodulecode_year(@Param("modulecode") String modulecode,@Param("year") String year);

	   @Query(value = "SELECT domain_interview.* FROM TA_allocation.domain_interview inner join TA_allocation.domain_applications on domain_interview.moduleid= domain_applications.id where domain_interview.candidates=:candidates  && domain_interview.year=:year &&domain_applications.status_of_allocation=0 && domain_interview.moduleid!=:moduleid", nativeQuery = true)
	   List<Domain_interview> InterviewedAndHasnotAssigned(@Param("year") String year,@Param("candidates") String candidates,@Param("moduleid") String moduleid);
//	   
//	   @Query(value = "SELECT * FROM TA_allocation.domain_interview where year=:year && candidates=:candidates  &&modulecode!=:modulecode ", nativeQuery = true)
//	   List<Domain_interview> interview_candidate_except(@Param("modulecode") String modulecode,@Param("candidates") String candidates,@Param("year") String year);
	   
	   List<Domain_interview>  findBycandidates(String id);
	  List<Domain_interview> findByyear(String year);
}