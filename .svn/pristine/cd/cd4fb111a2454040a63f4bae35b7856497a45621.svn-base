package ta.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import ta.domain.Domain_Registration;

@Repository
public interface Repo_Registration extends JpaRepository<Domain_Registration, String> {

	// Domain_Registration findByid(String id);

	@Query(value = "SELECT * FROM TA_allocation.domain_registration where id like %:id%", nativeQuery = true)
	List<Domain_Registration> findBy_like_id(@Param("id") String id);

	@Query(value = "SELECT * FROM TA_allocation.domain_registration where (id like %:id% or name like %:id% )&& yearofuni!='6'&& yearofuni!='7' ", nativeQuery = true)
	List<Domain_Registration> findBylikeid_without_professor_manager(@Param("id") String id);

	@Query(value = "SELECT * FROM TA_allocation.domain_registration where (id like %:id% or name like %:id% ) && yearofuni='6'", nativeQuery = true)
	List<Domain_Registration> findprofessorBylikeid(@Param("id") String id);

	@Query(value = "SELECT * FROM TA_allocation.domain_registration where id like %:id% or name like %:id%", nativeQuery = true)
	List<Domain_Registration> findBy_like_id_name(@Param("id") String id);

	@Query(value = "SELECT * FROM TA_allocation.domain_registration where subject=:subject && yearofuni!='6'&&yearofuni!='7'", nativeQuery = true)
	List<Domain_Registration> findBysubject(@Param("subject") String subject);
	
	@Query(value = "SELECT * FROM TA_allocation.domain_registration where (id like %:id% or name like %:id% )&& yearofuni!='6'&& yearofuni!='7'&& subject=:subject ", nativeQuery = true)
	List<Domain_Registration> findBylikeid_without_professor_managerBySubject(@Param("id") String id,@Param("subject") String subject);
	
}