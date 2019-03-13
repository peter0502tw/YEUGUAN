package ta.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import ta.domain.Domain_CV;

@Repository
public interface Repo_CV extends CrudRepository<Domain_CV, Long> {

	@Query(value = "SELECT * FROM TA_allocation.domain_cv where candiid=:candiid", nativeQuery = true)
	Optional<Domain_CV> findByCandiID(@Param("candiid")String id);

}
