package ta.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ta.domain.Domain_Enrol;
import ta.domain.Domain_IDEs;
import ta.domain.Domain_Registration;
import ta.domain.Domain_Skills;
import ta.domain.Domain_chosen_cadidates;
import ta.domain.Domain_endorsement;
import ta.domain.Domain_interview;
import ta.domain.Domain_subject;
import ta.domain.Domain_Applications;
import ta.domain.Domain_CV;
import ta.domain.Role;
import ta.repositories.Repo_interview;
import ta.repositories.Repo_Applications;
import ta.repositories.Repo_CV;
import ta.repositories.Repo_Endorsement;
import ta.repositories.Repo_Enrol;
import ta.repositories.Repo_IDEs;
import ta.repositories.Repo_Registration;
import ta.repositories.Repo_Role;
import ta.repositories.Repo_chosen_cadidates;
import ta.repositories.Repo_skills;
import ta.repositories.Repo_subject;

@Service
public class Service_Query {
	@Autowired
	private Repo_Applications C_vacancy;
	@Autowired
	private Repo_skills skill_repo;
	@Autowired
	private Repo_IDEs IDE_repo;
	@Autowired
	private Repo_Enrol enrol_repo;
	@Autowired
	private Repo_chosen_cadidates chosen_repo;
	@Autowired
	private Repo_Registration Regis_repo;
	@Autowired
	private Repo_interview Inter_repo;
	@Autowired
	private Repo_Role Role_repo;
	@Autowired
	private Repo_Endorsement Endrose_repo;
	@Autowired
	private Repo_subject Subject_repo;
	@Autowired
	private Repo_CV CV_repo;

	@Autowired
	private org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder BCryptPasswordEncoder;

	public List<Domain_Registration> FindCanBySubject(String subject) {
		return Regis_repo.findBysubject(subject);
	}

	public Optional<Domain_Enrol> findStatusEnrolled(String modulecode, String Candidate, String year) {

		return enrol_repo.findStatusEnrolled(Candidate, modulecode, year);
	}
	public boolean DeleteApplication(String modulecode, String Candidate) {
		enrol_repo.deleteById(modulecode+Candidate);
		return true;
	}
	public List<Domain_Applications> ApplicableApplications(String subject, String Candidate) {

		Iterable<Domain_Applications> vacancies = C_vacancy.ApplicableApplications();
		List<Domain_Applications> All_list = new ArrayList<Domain_Applications>();
		vacancies.forEach(each -> {
			System.out.println(each.getId() + "\n");
			boolean status = false;
			String[] subjust_array = each.getSubject().split(",");
			for (String eachsubject : subjust_array) {
				System.out.println(eachsubject+" "+eachsubject.equals(subject));
				if (eachsubject.equals(subject))
					status = true;
			}
			if (status == true)
				All_list.add(each);
		});
		List<Domain_Applications> Return = new ArrayList<Domain_Applications>();
		for (int i = 0; i < All_list.size(); i++) {
			Domain_Applications each = All_list.get(i);

			Optional<Domain_Enrol> status = findStatusEnrolled(each.getModulecode(), Candidate, each.getYear());

			if (status.isPresent())
				each.setEnrolStatus(true);
			else
				each.setEnrolStatus(false);

			Return.add(each);
		}

		return Return;
	}
	public List<Domain_Applications> PendingApplications(String subject, String Candidate) {

		Iterable<Domain_Applications> vacancies = C_vacancy.PendingApplications();
		List<Domain_Applications> All_list = new ArrayList<Domain_Applications>();
		vacancies.forEach(each -> {
			System.out.println(each.getId() + "\n");
			boolean status = false;
			String[] subjust_array = each.getSubject().split(",");
			for (String eachsubject : subjust_array) {
				System.out.println(eachsubject+" "+eachsubject.equals(subject));
				if (eachsubject.equals(subject))
					status = true;
			}
			if (status == true)
				All_list.add(each);
		});
		List<Domain_Applications> Return = new ArrayList<Domain_Applications>();
		for (int i = 0; i < All_list.size(); i++) {
			Domain_Applications each = All_list.get(i);

			Optional<Domain_Enrol> status = findStatusEnrolled(each.getModulecode(), Candidate, each.getYear());

			if (status.isPresent())
				Return.add(each);	
		}

		return Return;
	}
	public List<Domain_Applications> findOver7Days() {
		return C_vacancy.findOver7Days();
	}

	public List<Domain_Applications> findOver14Days() {
		return C_vacancy.findOver14Days();
	}

	public Optional<Domain_CV> FindCVById(String id) {
		return CV_repo.findByCandiID(id);
	}

	public Domain_CV SaveCV(Domain_CV entity) {
		return CV_repo.save(entity);
	}

	public Iterable<Domain_Applications> findAllvacancy() {
		return C_vacancy.findAll();
	}

	public List<String> findhistory() {
		return C_vacancy.findByyear();
	}

	public List<Domain_Applications> findVacancies_subject(String subject) {
		return C_vacancy.findVancancies_different_subject(subject);
	}

	public List<Domain_chosen_cadidates> findByyear_chosen(String year) {
		return chosen_repo.findByyear(year);
	}

	public List<Domain_Enrol> findByyear_enrol(String year) {
		return enrol_repo.findByyear(year);
	}

	public List<Domain_interview> findByyear_interview(String year) {
		return Inter_repo.findByyear(year);
	}

	public List<Domain_Applications> findByyear_vacancy(String year) {
		return C_vacancy.findByyear(year);
	}

	public List<Domain_chosen_cadidates> findChosenByProfessor(String id) {
		return chosen_repo.findByProfessor(id);
	}

	public List<Domain_chosen_cadidates> findByCandidatesForManager() {
		return chosen_repo.findByCandidatesForManager();
	}

	public Iterable<Domain_Registration> findAllcandidates() {
		return Regis_repo.findAll();
	}

	public List<Domain_chosen_cadidates> findchosenCandidatebyCandiID(String id) {
		return chosen_repo.findBycandidate(id);
	}

	public List<Domain_Applications> findBymodulecodeLike(String modulecode) {
		return C_vacancy.findBymodulecodeLike(modulecode);
	}

	public List<Domain_interview> find_interview_bymodulecode_year(String modulecode, String year) {
		return Inter_repo.find_interview_bymodulecode_year(modulecode, year);
	}

	public boolean save_interview(Domain_interview domain_interview) {
		Inter_repo.save(domain_interview);
		return true;
	}

	public Optional<Domain_chosen_cadidates> findAChosenById(String id) {

		return chosen_repo.findById(id);
	}

	public Integer CountApplied(String id) {

		return enrol_repo.CountApplied(id);
	}

	public Optional<Domain_endorsement> findAnEndorsementById(String candidates) {

		return Endrose_repo.findById(candidates);
	}

	public boolean SaveAnEndorsementById(Domain_endorsement domain_endorsement) {
		Endrose_repo.save(domain_endorsement);
		return true;
	}

	public boolean delete_an_interview(String id) {
		Inter_repo.deleteById(id);
		;
		return true;
	}

	public boolean delete_an_chosen(String id) {
		chosen_repo.deleteById(id);
		;
		return true;
	}

	public List<Domain_Enrol> enrol_candidate_except(Domain_Enrol domain_enrol) throws SQLException {
		return enrol_repo.find_total_applied_candidate(domain_enrol.getModulecode(), domain_enrol.getYear(),
				domain_enrol.getCandidates().getId());
	}
	public List<Domain_interview> InterviewedAndHasnotAssigned(String year, String candidates,String moduleid) {

		return Inter_repo.InterviewedAndHasnotAssigned(year, candidates,moduleid);
	}
	

	public List<Domain_chosen_cadidates> List_chosencandidates(String id) {

		return chosen_repo.findByCandidates(id);
	}

	public List<Domain_interview> List_interviewcandidates(String id) {

		return Inter_repo.findBycandidates(id);
	}

	public List<Domain_Enrol> List_enrolcandidates(String id) {

		return enrol_repo.findByCandidates(id);
	}

	public boolean add_subjects(Domain_subject domain_subject) {
		Subject_repo.save(domain_subject);
		return true;
	}

	public Optional<Domain_subject> find_subjects(Domain_subject domain_subject) {
		return Subject_repo.findById(domain_subject.getSubject());
	}

	public boolean delete_interview(String id) {
		Inter_repo.deleteById(id);
		;
		return true;
	}

	public boolean delete_registration(String id) {
		Regis_repo.deleteById(id);
		;
		return true;
	}

	public List<Domain_Registration> findBy_like_id_name(String id) {
		List<Domain_Registration> candi = Regis_repo.findBy_like_id_name(id);
		return candi;
	}

	public List<Domain_Registration> find_candidates_onlybyid(String id) {
		List<Domain_Registration> candi = Regis_repo.findBylikeid_without_professor_manager(id);
		return candi;
	}

	public List<Domain_Registration> findBylikeid_without_professor_managerBySubject(String id, String subject) {
		List<Domain_Registration> candi = Regis_repo.findBylikeid_without_professor_managerBySubject(id, subject);
		return candi;
	}

	public List<Domain_Registration> find_professor_onlybyid(String id) {
		List<Domain_Registration> candi = Regis_repo.findprofessorBylikeid(id);
		return candi;
	}

	public Optional<Domain_Registration> findacandidateid(String id) {
		Optional<Domain_Registration> candi = Regis_repo.findById(id);
		return candi;
	}

	public Optional<Domain_interview> findan_interview(String id) {
		return Inter_repo.findById(id);
	}

	public boolean saveregistration(Domain_Registration registration) {
		String rolee = "Master";

		registration.setPassword(BCryptPasswordEncoder.encode(registration.getPassword()));
		registration.setActive(1);
		switch (registration.getYearofuni()) {
		case 1:
			rolee = "Candidates";
			break;
		case 2:
			rolee = "Candidates";
			break;
		case 3:
			rolee = "Candidates";
			break;
		case 4:
			rolee = "Candidates";
			break;
		case 5:
			rolee = "Candidates";
			break;
		case 6:
			rolee = "Professors";
			break;
		}
		Role userRole = Role_repo.findByRole(rolee);
		registration.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
		Regis_repo.save(registration);
		return true;
	}

	public boolean delete_enrol(String id) {
		enrol_repo.deleteById(id);
		return true;
	}

	public List<Domain_chosen_cadidates> find_allocated_candidates_byyear_module(String modulecode, String year) {
		return chosen_repo.module_allocated_candidates(year, modulecode);
	}

	public boolean save_vacancy(Domain_Applications create_a_vacancy) {
		Optional<Domain_Applications> ID = C_vacancy.findById(create_a_vacancy.getId());
		if (!ID.isPresent()) {
			C_vacancy.save(create_a_vacancy);

			System.out.println("save a vacancy sussesfully");
			return true;
		} else {
			System.out.println("save a vacancy unsussesfully");
			return false;
		}

	}

	public boolean update_vacancy(Domain_Applications create_a_vacancy) {
		C_vacancy.save(create_a_vacancy);
		return true;

	}

	public Optional<Domain_Applications> findmodulebyid(String modulecode) throws SQLException {

		return C_vacancy.findById(modulecode);

	}

	public Optional<Domain_interview> findInterview(String moduleid, String candidate)
			throws SQLException {

		return Inter_repo.findById(moduleid + candidate);

	}

	public List<Domain_Applications> findbyprofessor(String professor) {
		return C_vacancy.findByProfessor(professor);

	}

	public List<Domain_Skills> findkillsuggestion(String skill) {

		return skill_repo.findByskillsuggestions(skill);

	}

	public List<Domain_subject> findsubject() {

		return Subject_repo.findAll();

	}

	public List<Domain_subject> findsubjectlike(String subject) {

		return Subject_repo.findBylikesubject(subject);

	}

	public boolean savebyskills(Domain_Skills skills) {
		Optional<Domain_Skills> skill = skill_repo.findById(skills.getSkills());
		if (!skill.isPresent()) {
			skill_repo.save(skills);
			System.out.println("save a skill sussesfully");
			return true;
		} else {
			System.out.println("skills used");
			return false;
		}

	}

	public List<Domain_IDEs> findIDEsuggestion(String ide) {

		return IDE_repo.findByIDEssuggestions(ide);

	}

	public Optional<Domain_Enrol> find_an_enrol(String id) {

		return enrol_repo.findById(id);

	}

	public boolean savebyIDEs(Domain_IDEs ides) {
		Optional<Domain_IDEs> ide = IDE_repo.findById(ides.getIdes());
		if (!ide.isPresent()) {
			IDE_repo.save(ides);

			System.out.println("save a ide sussesfully");
			return true;
		} else {
			System.out.println("ide used");
			return false;
		}
	}

	public boolean savebyCandidate_enrol(Domain_Enrol enrol) {
		enrol_repo.save(enrol);
		return true;
	}

	public List<Domain_chosen_cadidates> candidates_Allocated_modules(String candidates, String year) {

		return chosen_repo.find_check_state_has_signed(candidates, year);
	}

	public boolean Find_status_apllication(Domain_Enrol enrol) {
		Optional<Domain_Enrol> enrol_by_id = enrol_repo.findById(enrol.getId());
		if (!enrol_by_id.isPresent()) {
			// System.out.println("hasn't applied");
			// System.out.println(enrol.getCandidates());
			return true;

		} else {
			// System.out.println("has applied");
			return false;

		}

	}

	public List<Domain_chosen_cadidates> find_chosen_modulecode_year(String modulecode, String year) {
		return chosen_repo.find_module_chosen_bymodulecode_year(modulecode, year);

	}

	public boolean delete_a_vacancy(String modulecode, String year) {
		Optional<Domain_Applications> id = C_vacancy.findById(modulecode + year);
		if (id.isPresent()) {
			C_vacancy.deleteById(modulecode + year);
			return true;
		} else
			return false;

	}

	public boolean save_allocated_candidates(Domain_chosen_cadidates chosen_cadidates) {

		chosen_repo.save(chosen_cadidates);
		return true;

	}

	public List<Domain_Enrol> list_application_enrol(String modulecode, String year) {

		List<Domain_Enrol> enrol = enrol_repo.find_total_applied_number(modulecode, year);
		return enrol;

	}
	public Integer CandidatesCountEnrol(String candidate, String year) {

		Integer enrol = enrol_repo.CandidatesCountEnrol(candidate, year);
		return enrol;

	}

	public List<Domain_interview> list_application_interview(String modulecode, String year) {

		List<Domain_interview> interview = Inter_repo.find_interview_bymodulecode_year(modulecode, year);
		return interview;

	}

	public Domain_Applications update_aplication_status(Domain_Applications domain_Applications) {

		Domain_Applications status = C_vacancy.save(domain_Applications);
		return status;

	}

	public List<Domain_Applications> application_check_deadline() {
		// System.out.println(date);
		List<Domain_Applications> status = C_vacancy.check_application_deadline();
		// System.out.println(status.size());
		return status;

	}

}
