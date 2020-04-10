package ta.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import ta.domain.Domain_Applications;

@Repository
public interface Repo_Applications extends CrudRepository<Domain_Applications, String> {
	// Domain_Applications findBymodulecode(String modulecode);
	Domain_Applications findByid(String id);

	List<Domain_Applications> findByyear(String year);

	@Query(value = "SELECT year  FROM TA_allocation.domain_applications Group By year", nativeQuery = true)
	List<String> findByyear();

	@Query(value = "SELECT * FROM TA_allocation.domain_applications where year=:year && unallocatedstudentonly='0'", nativeQuery = true)
	List<Domain_Applications> find_all_selected_modules(@Param("year") String year);

	@Query(value = "SELECT * FROM TA_allocation.domain_applications where professor=:professor", nativeQuery = true)
	List<Domain_Applications> findByProfessor(@Param("professor") String professor);

	@Query(value = "SELECT * FROM domain_applications WHERE  application_deadline  between makedate(year(now()), date_format(now(),'%j')-1) and makedate(year(now()), date_format(now(),'%j')) && status_of_allocation='0'", nativeQuery = true)
	List<Domain_Applications> check_application_deadline();

	@Query(value = "SELECT * FROM TA_allocation.domain_applications where subject=:subject", nativeQuery = true)
	List<Domain_Applications> findVancancies_different_subject(@Param("subject") String subject);

	@Query(value = "SELECT * FROM TA_allocation.domain_applications where modulecode like %:modulecode%", nativeQuery = true)
	List<Domain_Applications> findBymodulecodeLike(@Param("modulecode") String modulecode);

	@Query(value = "SELECT * FROM TA_allocation.domain_applications where application_deadline >= NOW()", nativeQuery = true)
	List<Domain_Applications> ApplicableApplications();
	
	
	@Query(value = "SELECT * FROM TA_allocation.domain_applications where application_deadline <= NOW() &&status_of_allocation=0 ", nativeQuery = true)
	List<Domain_Applications> PendingApplications();
	
	@Query(value = "SELECT * FROM TA_allocation.domain_applications where application_deadline <= NOW() - INTERVAL 14 DAY &&status_of_allocation=0", nativeQuery = true)
	List<Domain_Applications> findOver14Days();
	
	@Query(value = "SELECT * FROM TA_allocation.domain_applications where application_deadline <= NOW() - INTERVAL 7 DAY &&status_of_allocation=0", nativeQuery = true)
	List<Domain_Applications> findOver7Days();
}
