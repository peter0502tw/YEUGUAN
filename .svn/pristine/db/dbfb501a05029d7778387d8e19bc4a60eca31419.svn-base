package ta.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.dao.InvalidDataAccessResourceUsageException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import ta.domain.Domain_IDEs;
import ta.domain.Domain_Registration;
import ta.domain.Domain_Skills;
import ta.domain.Domain_SuggestionList;
import ta.domain.Domain_chosen_cadidates;
import ta.domain.Domain_conflict_modules;
import ta.domain.Domain_endorsement;
import ta.domain.Domain_interview;
import ta.domain.Domain_subject;
import ta.Component.Mail;
import ta.domain.Domain_Enrol;
import ta.domain.Domain_AllocationSigns;
import ta.domain.Domain_Applications;
import ta.domain.Domain_CV;
import ta.service.Service_Query;

@RequestMapping(value = { "/TA_Gradle" })
@RestController
public class Controller {

	@Autowired
	private Service_Query service;

	Domain_Applications Create_a_vacancy_domain = new Domain_Applications();

	Domain_Skills Domain_skills = new Domain_Skills();

	Domain_IDEs Domain_ides = new Domain_IDEs();

	Domain_chosen_cadidates domain_chosen = new Domain_chosen_cadidates();
	Domain_Enrol Domain_enrol = new Domain_Enrol();
	Domain_Registration Domain_registration = new Domain_Registration();
	Domain_interview Domain_interview = new Domain_interview();
	Domain_endorsement domain_endorsement = new Domain_endorsement();
	Domain_subject domain_subject = new Domain_subject();
	Domain_CV domain_CV = new Domain_CV();
	Domain_SuggestionList domain_suggestion = new Domain_SuggestionList();

	@Autowired
	public Mail sendmail;

	@RequestMapping("/TA/uploadFile")
	public ModelAndView uploadFile(@RequestParam("file") MultipartFile file) throws IOException {
		// System.out.println("Pdf "+file.getContentType().contains("pdf") +"Word
		// "+file.getContentType().contains("word") + " " + file.getSize()+"
		// "+file.getContentType()+" "+file.getName());
		if (!file.getContentType().contains("pdf") && !file.getContentType().contains("word"))
			return new ModelAndView("redirect:" + "/TA/default?CV=1&&UploadMessage=Invalid File");
		if (file.getSize() > 5000000)
			return new ModelAndView(
					"redirect:" + "/TA/default?CV=1&&UploadMessage=The size of the document is too large");

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Optional<Domain_Registration> user = service.findacandidateid(auth.getName());

		Optional<Domain_CV> existing_file = service.FindCVById(auth.getName());

		if (existing_file.isPresent())
			domain_CV.setId(existing_file.get().getId());

		domain_CV.setCandiID(user.get());
		domain_CV.setData(file.getBytes());
		domain_CV.setFileName(file.getOriginalFilename());
		domain_CV.setDate(new Date());
		service.SaveCV(domain_CV);

		return new ModelAndView("redirect:" + "/TA/default?CV=1&&UploadMessage=Successfully");

	}

	@RequestMapping("/TA/Download/CV/{fileId}")
	public ResponseEntity<ByteArrayResource> downloadCV(@PathVariable String fileId) throws IOException {
		Optional<Domain_CV> CV = service.FindCVById(fileId);

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Optional<Domain_Registration> user = service.findacandidateid(auth.getName());
		if (!CV.isPresent() || !user.isPresent())
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);

		// System.out.println(user.get().getYearofuni());

		if (user.get().getYearofuni() > 5) {
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + CV.get().getFileName() + "\"")
					.body(new ByteArrayResource(CV.get().getData()));
		} else {
			System.out.println("unauthorised");
			return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
		}

	}

	public void DeadlineAlarm(String to, String Name, String application, String modulecode) {
		sendmail.DeadlineAlarm(to, application, modulecode, Name);
	}

	@RequestMapping(value = "/TA/delete/history")
	public boolean DeleteHistory(@RequestParam(value = "year", required = true) String year) throws SQLException {

		service.findByyear_chosen(year).forEach(chosen -> service.delete_an_chosen(chosen.getId()));

		service.findByyear_enrol(year).forEach(enrol -> {
			service.delete_enrol(enrol.getId());
		});

		service.findByyear_interview(year).forEach(interview -> service.delete_an_interview(interview.getId()));
		;
		service.findByyear_vacancy(year).forEach(id -> service.delete_a_vacancy(id.getModulecode(), id.getYear()));
		;

		return true;
	}

	@RequestMapping(value = "/TA/cancel/Application")
	public boolean DeleteApplication(@RequestParam(value = "moduleid", required = true) String id) throws SQLException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		service.DeleteApplication(id, auth.getName());

		return true;
	}

	@RequestMapping(value = "/TA/find/endorsement")
	public Optional<Domain_endorsement> findEndorsement(
			@RequestParam(value = "candidates", required = true) String candidates) {
		// Optional<Domain_Registration> candi=service.findacandidateid(candidates);
		return service.findAnEndorsementById(candidates);
	}

	@RequestMapping(value = "/TA/endorsement")
	public ModelAndView endorsement() throws SQLException {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("user", auth.getName());
		modelAndView.addObject("endorselist", findEndorsementlist(auth.getName()));
		modelAndView.setViewName("endorsement");
		return modelAndView;
	}

	@RequestMapping(value = "/TA/save/subjects")
	public boolean saveSunjects(@RequestParam(value = "subject", required = true) String subject) throws SQLException {

		domain_subject.setSubject(subject);
		Optional<Domain_subject> find_subject = service.find_subjects(domain_subject);
		if (!find_subject.isPresent()) {
			service.add_subjects(domain_subject);
			return true;
		} else
			return false;
	}

	@RequestMapping(value = "/TA/find/subjects")
	public boolean findSubjects(@RequestParam(value = "subject", required = true) String subject) throws SQLException {
		domain_subject.setSubject(subject);
		Optional<Domain_subject> find_subject = service.find_subjects(domain_subject);
		if (!find_subject.isPresent()) {
			return true;
		} else
			return false;
	}

	@RequestMapping(value = "/TA/endorsement/survey")
	public ModelAndView endorsement1(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "id", required = true) String id) throws SQLException {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("user", auth.getName());
		modelAndView.addObject("endorselist", findEndorsementlist(auth.getName()));
		modelAndView.addObject("modulecode", modulecode);
		modelAndView.addObject("year", year);
		modelAndView.addObject("candidates", candidates);
		modelAndView.addObject("title", title);
		modelAndView.addObject("id", id);
		modelAndView.setViewName("endorsement_survey");
		return modelAndView;
	}

	@RequestMapping(value = "/TA/find/endorsement/list")
	public List<Domain_chosen_cadidates> findEndorsementlist(
			@RequestParam(value = "professor", required = true) String id) {
		List<Domain_chosen_cadidates> list = new ArrayList<Domain_chosen_cadidates>();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth.getName().contains("Manager") || auth.getName().contains("manager")) {
			list = service.findChosenByProfessor(id);
		} else {
			list = service.findByCandidatesForManager();
		}

		// after 90days

//		List<Domain_chosen_cadidates> remove = new ArrayList<Domain_chosen_cadidates>();
//		if (!list.isEmpty()) {
//			System.out.println("size "+list.size());
//			for (Domain_chosen_cadidates each_record : list) {
//				Instant now = Instant.now();
//				Instant chosen_date = each_record.getChosenDate().toInstant();
//				long difference=ChronoUnit.DAYS.between(chosen_date, now);
//				System.out.println("time "+difference);
//				if(difference<90) {
//					remove.add(each_record);
//				}
//			}
//			list.removeAll(remove);
//			return list;
//		} else
//			return list;

		return list;

	}

	@RequestMapping(value = "/TA/save/endorsement")
	public boolean saveEndorsement(@RequestParam(value = "candidates", required = true) String Candidates,
			@RequestParam(value = "modulecode", required = false) String modulecode,
			@RequestParam(value = "year", required = false) String year,
			@RequestParam(value = "Attitude", required = false) float attitude,
			@RequestParam(value = "ProblemSolving", required = false) float problemSolving,
			@RequestParam(value = "Punctuality", required = false) float punctuality,
			@RequestParam(value = "Cooperation", required = false) float cooperation) throws SQLException {
		float Attitude;
		float ProblemSolving;
		float Punctuality;
		float Cooperation;

		Optional<Domain_endorsement> record = service.findAnEndorsementById(Candidates);
		Optional<Domain_chosen_cadidates> Change_Status = service.findAChosenById(modulecode + year + Candidates);
		Optional<Domain_Registration> candi_id = service.findacandidateid(Candidates);
		Optional<Domain_Applications> appli = service.findmodulebyid(modulecode + year);

		domain_endorsement.setCandidates(candi_id.get().getId());
		domain_endorsement.setCandidates_fore(candi_id.get());
		if (record.isPresent()) {
			Attitude = (record.get().getAttitude() + attitude) / 2;
			ProblemSolving = (record.get().getProblemSolving() + problemSolving) / 2;
			Punctuality = (record.get().getPunctuality() + punctuality) / 2;
			Cooperation = (record.get().getCooperation() + cooperation) / 2;
			domain_endorsement.setAttitude(Attitude);
			domain_endorsement.setCooperation(Cooperation);
			domain_endorsement.setProblemSolving(ProblemSolving);
			domain_endorsement.setPunctuality(Punctuality);
			domain_endorsement.setTimes(record.get().getTimes() + 1);
		} else {
			domain_endorsement.setAttitude(attitude);
			domain_endorsement.setCooperation(cooperation);
			domain_endorsement.setProblemSolving(problemSolving);
			domain_endorsement.setPunctuality(punctuality);
			domain_endorsement.setTimes(1);
		}
		domain_chosen.setCandidates(Change_Status.get().getCandidates());
		domain_chosen.setId(Change_Status.get().getId());
		domain_chosen.setChosenDate(Change_Status.get().getChosenDate());
		domain_chosen.setModulecode(Change_Status.get().getModulecode());
		domain_chosen.setProfessor(Change_Status.get().getProfessor());
		domain_chosen.setTitle(Change_Status.get().getTitle());
		domain_chosen.setYear(Change_Status.get().getYear());
		domain_chosen.setTime(Change_Status.get().getTime());
		domain_chosen.setEndorsment(1);
		domain_chosen.setModuleid(appli.get());
		service.SaveAnEndorsementById(domain_endorsement);
		service.save_allocated_candidates(domain_chosen);
		return true;
	}

	@RequestMapping(value = "/TA/findallvacancies")
	public Iterable<Domain_Applications> findallvacancies() throws SQLException {
		try {
			return service.findAllvacancy();
		} finally {
		}
	}

	@RequestMapping(value = "/TA/findBymodulecodeLike")
	public List<Domain_Applications> findBymodulecodeLike(
			@RequestParam(value = "modulecode", required = true) String modulecode) throws SQLException {
		return service.findBymodulecodeLike(modulecode);
	}

	@RequestMapping(value = "/TA/findchosenCandidate/CandiID")
	public List<Domain_chosen_cadidates> findchosenCandidatebyCandiID() throws SQLException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		List<Domain_chosen_cadidates> list = service.findchosenCandidatebyCandiID(auth.getName());

		return list;
	}

	@RequestMapping(value = "/TA/findvacancies")
	public List<Domain_Applications> findvacancies(@RequestParam(value = "subject", required = true) String subject)
			throws SQLException {
		try {
			Iterable<Domain_Applications> vacancies = service.findAllvacancy();
			List<Domain_Applications> All_list = new ArrayList<Domain_Applications>();
			vacancies.forEach(each -> {
				// System.out.println(each.getId() + "\n");
				boolean status = false;
				String[] subjust_array = each.getSubject().split(",");
				for (String eachsubject : subjust_array) {
					// System.out.println(eachsubject);
					if (eachsubject.equals(subject))
						status = true;
				}
				if (status == true)
					All_list.add(each);
			});

			return All_list;
		} finally {
		}
	}

	@RequestMapping(value = "/TA/findvacancies/Candidates")
	public List<Domain_Applications> findvacancie() throws SQLException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return service.ApplicableApplications(service.findacandidateid(auth.getName()).get().getSubject(),
				auth.getName());

	}

	@RequestMapping(value = "/TA/findPendings/Candidates")
	public List<Domain_Applications> PendingApplications() throws SQLException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return service.PendingApplications(service.findacandidateid(auth.getName()).get().getSubject(), auth.getName());

	}

	@RequestMapping(value = "/TA/findbyprofessor")
	public List<Domain_Applications> findbyprofessor(
			@RequestParam(value = "professor", required = true) String professor) throws SQLException {
		return service.findbyprofessor(professor);
	}

	@RequestMapping(value = "/TA/save/chosen/candidates")
	public boolean save_chosen_candidates(@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year) throws SQLException, ParseException {

		return true;

		// http://localhost:8080/create/vacancy?professor=%22123%22&year=%2221%22&title=%22234%22&total_hours=%22234%22&time_start=%2212:00%22&time_end=%2212:32%22&unallocated_student_only=%221%22&quntities_TA=%22123%22&grade_of_the_model=%22123%22&skills=%22123%22&IDE=%22123%22

	}

//	@RequestMapping(value = "/TA/send/interview")
//	public boolean send_email(@RequestParam(value = "modulecode", required = true) String modulecode,
//			@RequestParam(value = "year", required = true) String year,
//			@RequestParam(value = "id", required = true) String studentid,
//			@RequestParam(value = "content", required = true) String content,
//			@RequestParam(value = "professor", required = true) String cc,
//			@RequestParam(value = "MeetingDate", required = true) Date MeetingDate,
//			@RequestParam(value = "StartingTime", required = true) LocalTime StartingTime,
//			@RequestParam(value = "EndingTime", required = true) LocalTime EndingTime,
//			@RequestParam(value = "MeetingPlace", required = true) String MeetingPlace) throws SQLException, AddressException, MessagingException, IOException {
//		
//		Optional<Domain_Registration> candidateDetail = service.findacandidateid(studentid);
//		Optional<Domain_Registration> professor = service.findacandidateid(cc);
//		Optional<Domain_Applications> module = service.findmodulebyid(modulecode + year);
//		Optional<Domain_interview> interview_detail = service.findan_interview(modulecode + year + studentid);
//		Optional<Domain_Registration> candidates = service.findacandidateid(studentid);
//
//		if (module.get().getCurrentStatus() == 1) {
//			module.get().setCurrentStatus(2);
//			service.update_vacancy(module.get());
//		}
//
//		
//		
//		Domain_interview.setCandidates(candidates.get());
//		Domain_interview.setContent(content);
//		Domain_interview.setDate(interview_detail.get().getDate());
//		Domain_interview.setId(modulecode + year + studentid);
//		Domain_interview.setModulecode(modulecode);
//		Domain_interview.setProfeesor(interview_detail.get().getProfeesor());
//		Domain_interview.setYear(year);
//		Domain_interview.setModuleid(module.get());
//		Domain_interview.setMeetingDate(MeetingDate.);
//		Domain_interview.setMeetingTime(StartingTime.+"~"+EndingTime+"~"+MeetingPlace);
//		sendmail.SendInterview(candidateDetail.get().getEmail(), content,candidates.get().getName(),
//				module.get().getModulecode() + " " + module.get().getTitle() + " " + year, studentid,
//				professor.get().getEmail());
//		service.save_interview(Domain_interview);
//		return true;
//	}

	@SuppressWarnings("deprecation")
	@RequestMapping(value = "/TA/send/interview")
	public boolean send_email(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "id", required = true) String studentid,
			@RequestParam(value = "content", required = true) String content,
			@RequestParam(value = "professor", required = true) String cc,
			@RequestParam(value = "MeetingDate", required = true) String MeetingDate,
			@RequestParam(value = "MeetingPlace", required = true) String MeetingPlace)
			throws SQLException, AddressException, MessagingException, IOException, ParseException {

		Optional<Domain_Registration> candidateDetail = service.findacandidateid(studentid);
		Optional<Domain_Registration> professor = service.findacandidateid(cc);
		Optional<Domain_Applications> module = service.findmodulebyid(modulecode + year);
		Optional<Domain_interview> interview_detail = service.findan_interview(modulecode + year + studentid);
		Optional<Domain_Registration> candidates = service.findacandidateid(studentid);

		if (module.get().getCurrentStatus() == 1) {
			module.get().setCurrentStatus(2);
			service.update_vacancy(module.get());
		}
		Domain_interview.setCandidates(candidates.get());
		Domain_interview.setContent(content);
		Domain_interview.setDate(interview_detail.get().getDate());
		Domain_interview.setId(modulecode + year + studentid);
		Domain_interview.setModulecode(modulecode);
		Domain_interview.setProfeesor(interview_detail.get().getProfeesor());
		Domain_interview.setYear(year);
		Domain_interview.setModuleid(module.get());
		Domain_interview.setMeetingDate(MeetingDate);
		Domain_interview.setMeetingPlace(MeetingPlace);
		service.save_interview(Domain_interview);

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		Date Sartingtime = dateFormat.parse(MeetingDate);
		Date Endingtime = dateFormat.parse(MeetingDate);
		Endingtime.setMinutes(Endingtime.getMinutes() + 30);

		SimpleDateFormat ICSFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
		String ICSStartingTime = ICSFormat.format(Sartingtime);
		String ICSEndingTime = ICSFormat.format(Endingtime);

		System.out.println(candidates.get().getName());

		sendmail.SendInterview(candidateDetail.get().getEmail(), content, candidates.get().getName(),
				module.get().getModulecode() + " " + module.get().getTitle(), studentid, professor.get().getEmail(),
				ICSStartingTime, ICSEndingTime, MeetingPlace, professor.get().getName());

		return true;
	}

	@RequestMapping(value = "/TA/check/enrol/overlap")
	public List<String> check_enrol_overlap(@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "candidates", required = true) String candidate) throws SQLException, ParseException {

		Optional<Domain_Registration> candi_instance = service.findacandidateid(candidate);
		Optional<Domain_Applications> moduleid = service.findmodulebyid(modulecode + year);
		Domain_enrol.setModuleid(moduleid.get());
		Domain_enrol.setCandidates(candi_instance.get());
		Domain_enrol.setModulecode(modulecode);
		Domain_enrol.setYear(year);

		List<Domain_Enrol> list_candidates_enrol_except = service.enrol_candidate_except(Domain_enrol);
		Optional<Domain_Applications> current_module = service.findmodulebyid(modulecode + year);
		SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy HH:mm");
		String fakeyear = "02-02-2018 ";
		String[] current_time_array = current_module.get().getTime().split(",");

		List<String> conflict = new ArrayList<>();
		for (String each_current_time : current_time_array) {
			String[] split_time_date_current = each_current_time.split(" ");
			String date_current = split_time_date_current[0];
			Date time_start_current = formatter.parse(fakeyear + split_time_date_current[1]);
			Date time_end_current = formatter.parse(fakeyear + split_time_date_current[2].replace("-", ""));
			for (Domain_Enrol each_except : list_candidates_enrol_except) {
				String each_modulecode = each_except.getModulecode();
				String each_year = each_except.getYear();
				Optional<Domain_Applications> module_can_has_applied = service
						.findmodulebyid(each_modulecode + each_year);

				if (module_can_has_applied.isPresent()) {
					String[] module_can_applied_time = module_can_has_applied.get().getTime().split(",");

					for (String module_can_applied_time_fragment : module_can_applied_time) {
						boolean status = false;

						String[] split_can_applied_time_fragment = module_can_applied_time_fragment.split(" ");
						String C_date = split_can_applied_time_fragment[0];
						Date start_time_applied = formatter.parse(fakeyear + split_can_applied_time_fragment[1]);
						Date end_time_applied = formatter
								.parse(fakeyear + split_can_applied_time_fragment[2].replace("-", ""));
//						System.out.println("Current Module"+current_module.get().getId()+" Applied Module"+module_can_has_applied.get().getId()+"\n");
//						System.out.println("Current Date "+date_current+" Current start:"+time_start_current+" Current end:"+time_end_current+" Applied Date:"+C_date+" Applied start:"+start_time_applied+" Applied End:"+end_time_applied+"\n");

						if (date_current.equals(C_date)) {
							if (time_end_current.compareTo(start_time_applied) >= 0)
								if (time_start_current.compareTo(start_time_applied) <= 0) {
									if (time_end_current.compareTo(start_time_applied) > 0) {
										status = true;
									} else {
									}
								}
							if (time_start_current.compareTo(start_time_applied) >= 0) {

								if (end_time_applied.compareTo(time_start_current) > 0) {
									status = true;
								} else {

								}
							}
						}
						if (status) {
							if (!conflict.contains(module_can_has_applied.get().getId()))
								conflict.add(module_can_has_applied.get().getId());

							// System.err.println("Modulecode:
							// "+module_can_has_applied.get().getModulecode()+"\n");
						}

					}

				}

			}

		}
		conflict.add(String.valueOf(list_candidates_enrol_except.size()));
		return conflict;
	}

	@RequestMapping(value = "/TA/check/interview/overlap")
	public List<String> check_interview_overlap(@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "candidates", required = true) String candidate) throws SQLException, ParseException {

		Optional<Domain_Registration> candi_instance = service.findacandidateid(candidate);
		Optional<Domain_Applications> moduleid = service.findmodulebyid(modulecode + year);
		Domain_enrol.setModuleid(moduleid.get());
		Domain_enrol.setCandidates(candi_instance.get());
		Domain_enrol.setModulecode(modulecode);
		Domain_enrol.setYear(year);

		List<Domain_interview> list_candidates_enrol_except = service.InterviewedAndHasnotAssigned(year,
				candi_instance.get().getId(), moduleid.get().getId());
		Optional<Domain_Applications> current_module = service.findmodulebyid(modulecode + year);
		SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy HH:mm");
		String fakeyear = "02-02-2018 ";
		String[] current_time_array = current_module.get().getTime().split(",");

		List<String> conflict = new ArrayList<>();
		for (String each_current_time : current_time_array) {
			String[] split_time_date_current = each_current_time.split(" ");
			String date_current = split_time_date_current[0];
			Date time_start_current = formatter.parse(fakeyear + split_time_date_current[1]);
			Date time_end_current = formatter.parse(fakeyear + split_time_date_current[2].replace("-", ""));
			for (Domain_interview each_except : list_candidates_enrol_except) {
				Optional<Domain_Applications> module_can_has_applied = service
						.findmodulebyid(each_except.getModuleid().getId());

				if (module_can_has_applied.isPresent()) {
					String[] module_can_applied_time = module_can_has_applied.get().getTime().split(",");

					for (String module_can_applied_time_fragment : module_can_applied_time) {
						boolean status = false;

						String[] split_can_applied_time_fragment = module_can_applied_time_fragment.split(" ");
						String C_date = split_can_applied_time_fragment[0];
						Date start_time_applied = formatter.parse(fakeyear + split_can_applied_time_fragment[1]);
						Date end_time_applied = formatter
								.parse(fakeyear + split_can_applied_time_fragment[2].replace("-", ""));
//						System.out.println("Current Module"+current_module.get().getId()+" Applied Module"+module_can_has_applied.get().getId()+"\n");
//						System.out.println("Current Date "+date_current+" Current start:"+time_start_current+" Current end:"+time_end_current+" Applied Date:"+C_date+" Applied start:"+start_time_applied+" Applied End:"+end_time_applied+"\n");

						if (date_current.equals(C_date)) {
							if (time_end_current.compareTo(start_time_applied) >= 0)
								if (time_start_current.compareTo(start_time_applied) <= 0) {
									if (time_end_current.compareTo(start_time_applied) > 0) {
										status = true;
									} else {
									}
								}
							if (time_start_current.compareTo(start_time_applied) >= 0) {

								if (end_time_applied.compareTo(time_start_current) > 0) {
									status = true;
								} else {

								}
							}
						}
						if (status) {
							if (!conflict.contains(module_can_has_applied.get().getId()))
								conflict.add(module_can_has_applied.get().getId());

							// System.err.println("Modulecode:
							// "+module_can_has_applied.get().getModulecode()+"\n");
						}

					}

				}

			}

		}
		// conflict.forEach(a -> System.err.println(a));

		return conflict;
	}

	@RequestMapping(value = "/TA/check/interview/overlap/add")
	public List<String> check_interview_overlap1(@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "candidates", required = true) String candidate) throws SQLException, ParseException {

		Optional<Domain_Registration> candi_instance = service.findacandidateid(candidate);
		Optional<Domain_Applications> moduleid = service.findmodulebyid(modulecode + year);
		Domain_enrol.setModuleid(moduleid.get());
		Domain_enrol.setCandidates(candi_instance.get());
		Domain_enrol.setModulecode(modulecode);
		Domain_enrol.setYear(year);

		List<Domain_interview> list_candidates_enrol_except = service.InterviewedAndHasnotAssigned(year,
				candi_instance.get().getId(), moduleid.get().getId());
		Optional<Domain_Applications> current_module = service.findmodulebyid(modulecode + year);
		SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy HH:mm");
		String fakeyear = "02-02-2018 ";
		String[] current_time_array = current_module.get().getTime().split(",");

		List<String> conflict = new ArrayList<>();
		for (String each_current_time : current_time_array) {
			String[] split_time_date_current = each_current_time.split(" ");
			String date_current = split_time_date_current[0];
			Date time_start_current = formatter.parse(fakeyear + split_time_date_current[1]);
			Date time_end_current = formatter.parse(fakeyear + split_time_date_current[2].replace("-", ""));
			for (Domain_interview each_except : list_candidates_enrol_except) {
				Optional<Domain_Applications> module_can_has_applied = service
						.findmodulebyid(each_except.getModuleid().getId());

				if (module_can_has_applied.isPresent()) {
					String[] module_can_applied_time = module_can_has_applied.get().getTime().split(",");

					for (String module_can_applied_time_fragment : module_can_applied_time) {
						boolean status = false;

						String[] split_can_applied_time_fragment = module_can_applied_time_fragment.split(" ");
						String C_date = split_can_applied_time_fragment[0];
						Date start_time_applied = formatter.parse(fakeyear + split_can_applied_time_fragment[1]);
						Date end_time_applied = formatter
								.parse(fakeyear + split_can_applied_time_fragment[2].replace("-", ""));
//						System.out.println("Current Module"+current_module.get().getId()+" Applied Module"+module_can_has_applied.get().getId()+"\n");
//						System.out.println("Current Date "+date_current+" Current start:"+time_start_current+" Current end:"+time_end_current+" Applied Date:"+C_date+" Applied start:"+start_time_applied+" Applied End:"+end_time_applied+"\n");

						if (date_current.equals(C_date)) {
							if (time_end_current.compareTo(start_time_applied) >= 0)
								if (time_start_current.compareTo(start_time_applied) <= 0) {
									if (time_end_current.compareTo(start_time_applied) > 0) {
										status = true;
									} else {
									}
								}
							if (time_start_current.compareTo(start_time_applied) >= 0) {

								if (end_time_applied.compareTo(time_start_current) > 0) {
									status = true;
								} else {

								}
							}
						}
						if (status) {
							if (!conflict.contains(module_can_has_applied.get().getId()))
								conflict.add(module_can_has_applied.get().getId());

							// System.err.println("Modulecode:
							// "+module_can_has_applied.get().getModulecode()+"\n");
						}

					}

				}

			}

		}
		conflict.add(String.valueOf(service.CandidatesCountEnrol(candidate, year)));
		// conflict.forEach(a -> System.err.println(a));

		return conflict;
	}

	@RequestMapping(value = "/TA/find/allocated/candidates/byyear/module")
	public List<Domain_chosen_cadidates> find_allocated_candidates_byyear_module(
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode) throws SQLException {
		return service.find_allocated_candidates_byyear_module(modulecode, year);
	}

	@RequestMapping(value = "/TA/assign/candidates")
	public boolean assign_candidates(@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "candidates", required = true) String candidates1)
			throws SQLException, ParseException, IOException, InterruptedException {
		Optional<Domain_Applications> current_module = service.findmodulebyid(modulecode + year);
		String[] Str_candidate = candidates1.split(",");
		List<Domain_Enrol> enrol_candi = service.list_application_enrol(modulecode, year);
		List<Domain_Enrol> to_remove = new ArrayList<Domain_Enrol>();
		List<String> CandidateAppliedConflictCopy = new ArrayList<String>();

		for (String candidates : Str_candidate) {
			List<String> candidateApplied_conflict = check_enrol_overlap(year, modulecode, candidates);

			Optional<Domain_Registration> candidate_detail = service.findacandidateid(candidates);

			// candidateApplied_conflict.forEach(a -> System.out.println("A:" + a));

			if (!candidateApplied_conflict.isEmpty()) {
				candidateApplied_conflict.remove(candidateApplied_conflict.size() - 1);
			}

			for (String each : candidateApplied_conflict) {
				if (!CandidateAppliedConflictCopy.contains(each))
					CandidateAppliedConflictCopy.add(each);
			}

			if (!candidateApplied_conflict.isEmpty()) {
				for (String each_applied_module_conflict : candidateApplied_conflict) {
					// System.out.println(each_applied_module_conflict);
					Optional<Domain_Applications> conflict_module_detail = service
							.findmodulebyid(each_applied_module_conflict);
					if (conflict_module_detail.isPresent()) {
						Optional<Domain_interview> check_professor_interviewing_candidates = service
								.findInterview(each_applied_module_conflict, candidates);
						if (check_professor_interviewing_candidates.isPresent())// delete and send an email
						{

							Optional<Domain_Registration> Professor_detail = service
									.findacandidateid(conflict_module_detail.get().getProfessor().getId());
							String Professor_email = Professor_detail.get().getEmail();
							String Professor_name_conflict = Professor_detail.get().getName();

							// System.err.println("Professor Name:" + Professor_name_conflict + "\n");

							ExecutorService emailExecutor = Executors.newCachedThreadPool();
							// from you getSalesUserData() method
							emailExecutor.execute(new Runnable() {
								@Override
								public void run() {
									sendmail.informProfessor_interview_delete(Professor_name_conflict, Professor_email,
											candidates, candidate_detail.get().getName(),
											conflict_module_detail.get().getModulecode(),
											conflict_module_detail.get().getTitle()
													+ conflict_module_detail.get().getYear());
								}
							});

							service.delete_an_interview(conflict_module_detail.get().getModulecode()
									+ conflict_module_detail.get().getYear() + candidates);

						}

					}

				}

			}

			Optional<Domain_Registration> candi_id = service.findacandidateid(candidates);
			Optional<Domain_Applications> moduleid = service.findmodulebyid(modulecode + year);
			domain_chosen.setModuleid(moduleid.get());
			domain_chosen.setProfessor(moduleid.get().getProfessor().getId());
			domain_chosen.setCandidates(candi_id.get());
			domain_chosen.setId(modulecode + year + candidates);
			domain_chosen.setModulecode(modulecode);
			domain_chosen.setTime(current_module.get().getTime());
			domain_chosen.setTitle(current_module.get().getTitle());
			domain_chosen.setYear(year);
			domain_chosen.setEndorsment(0);
			domain_chosen.setChosenDate(new Date());
			service.save_allocated_candidates(domain_chosen);

			ExecutorService emailExecutor = Executors.newCachedThreadPool();
			// from you getSalesUserData() method
			emailExecutor.execute(new Runnable() {
				@Override
				public void run() {
					try {
						sendmail.InformAllocation(candidate_detail.get().getEmail(), candidate_detail.get().getName(),
								current_module.get().getModulecode() + " " + current_module.get().getTitle() + " "
										+ current_module.get().getYear(),
								current_module.get().getDescription());
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			});

			for (Domain_Enrol each_candia : enrol_candi) {
				if (each_candia.getCandidates().getId().equals(candidates))
					to_remove.add(each_candia);
			}

		}

		if (!enrol_candi.isEmpty()) {
			enrol_candi.removeAll(to_remove);

			enrol_candi.forEach(send_refuse -> {
				
				ExecutorService emailExecutor = Executors.newCachedThreadPool();
				// from you getSalesUserData() method
				emailExecutor.execute(new Runnable() {
					@Override
					public void run() {
						sendmail.refuse_email(send_refuse.getCandidates().getEmail(), send_refuse.getCandidates().getName(),
								current_module.get().getModulecode() + " " + current_module.get().getTitle() + " "
										+ current_module.get().getYear());
					}
				});
				
				
			
			});

		}

		Create_a_vacancy_domain.setId(current_module.get().getModulecode() + current_module.get().getYear());
		Create_a_vacancy_domain.setProfessor(current_module.get().getProfessor());
		Create_a_vacancy_domain.setModulecode(current_module.get().getModulecode());
		Create_a_vacancy_domain.setYear(current_module.get().getYear());
		Create_a_vacancy_domain.setTitle(current_module.get().getTitle());
		Create_a_vacancy_domain.setApplication_deadline(current_module.get().getApplication_deadline());
		Create_a_vacancy_domain.setTotal_hours(current_module.get().getTotal_hours());
		Create_a_vacancy_domain.setTime(current_module.get().getTime());
		Create_a_vacancy_domain.setMasterphdonly(current_module.get().getMasterphdonly());
		Create_a_vacancy_domain.setQuntities_TA(current_module.get().getQuntities_TA());
		Create_a_vacancy_domain.setSkills(current_module.get().getSkills());
		Create_a_vacancy_domain.setiDE(current_module.get().getiDE());
		Create_a_vacancy_domain.setDescription(current_module.get().getDescription());
		Create_a_vacancy_domain.setPercentage_ides(current_module.get().getPercentage_ides());
		Create_a_vacancy_domain.setPercentage_skills(current_module.get().getPercentage_skills());
		Create_a_vacancy_domain.setPercentage_grade(current_module.get().getPercentage_grade());
		Create_a_vacancy_domain.setSubject(current_module.get().getSubject());
		Create_a_vacancy_domain.setStatus_of_allocation("1");
		service.update_aplication_status(Create_a_vacancy_domain);

		for (String each : CandidateAppliedConflictCopy) {

			Optional<Domain_Applications> CheckDeadline = service.findmodulebyid(each);
			// System.out.println("Each:" + each + "\n");
			if (CheckDeadline.isPresent()) {
				// System.out.println("After:" +
				// CheckDeadline.get().getApplication_deadline().after(new Date()));
				if (CheckDeadline.get().getApplication_deadline().before(new Date())
						&& CheckDeadline.get().getStatus_of_allocation().equals("0")) {
					List<Domain_SuggestionList> CheckEmptyList;

					CheckEmptyList = candidateslist(each);

					// System.out.println("CheckEmptyList.isEmpty()" + CheckEmptyList.isEmpty());
					// System.out.println("CheckEmptyList.isEmpty()" + CheckEmptyList.isEmpty());
					if (CheckEmptyList.isEmpty()) {
						Optional<Domain_Applications> ModuleDetail;

						ModuleDetail = service.findmodulebyid(each);

						
						ExecutorService emailExecutor = Executors.newCachedThreadPool();
						// from you getSalesUserData() method
						emailExecutor.execute(new Runnable() {
							@Override
							public void run() {
								sendmail.CandidatesListEmpty(ModuleDetail.get().getProfessor().getEmail(),
										ModuleDetail.get().getProfessor().getName(),
										ModuleDetail.get().getTitle() + " " + ModuleDetail.get().getYear());

							}
						});
						
						
					}

				}
			}
		}
		return true;

	}

	@RequestMapping(value = "/TA/delete/vacancy")
	public boolean delete_vacancy(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year_str", required = true) String year) throws SQLException {
		List<Domain_Enrol> enrol_list = service.list_application_enrol(modulecode, year);
		List<Domain_interview> inteview_list = service.list_application_interview(modulecode, year);
		List<Domain_chosen_cadidates> chosen_list = service.find_chosen_modulecode_year(modulecode, year);

		if (!enrol_list.isEmpty()) {
			for (Domain_Enrol each_enrol : enrol_list) {
				service.delete_enrol(each_enrol.getId());
			}
		}
		if (!inteview_list.isEmpty()) {
			for (Domain_interview each_inter : inteview_list) {
				service.delete_an_interview(each_inter.getId());
			}

		}
		if (!chosen_list.isEmpty()) {
			for (Domain_chosen_cadidates each_inter : chosen_list) {
				service.delete_an_chosen(each_inter.getId());
			}

		}

		return service.delete_a_vacancy(modulecode, year);
	}

	@RequestMapping(value = "/TA/delete/cadidates")
	public boolean delete_cadidates(@RequestParam(value = "candidates", required = true) String id)
			throws SQLException {
		List<Domain_chosen_cadidates> chosen = service.List_chosencandidates(id);
		List<Domain_Enrol> enrol = service.List_enrolcandidates(id);
		List<ta.domain.Domain_interview> interview = service.List_interviewcandidates(id);
		if (!chosen.isEmpty()) {
			for (Domain_chosen_cadidates each_enrol : chosen) {
				service.delete_an_chosen(each_enrol.getId());
			}
		}
		if (!enrol.isEmpty()) {
			for (Domain_Enrol each_enrol : enrol) {
				service.delete_enrol(each_enrol.getId());
			}
		}
		if (!interview.isEmpty()) {
			for (Domain_interview each_inter : interview) {
				service.delete_an_interview(each_inter.getId());
			}

		}
		service.delete_registration(id);

		return true;
	}

	@RequestMapping(value = "/TA/delete/vacancy/manager")
	public boolean delete_vacancy_manager(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year_str", required = true) String year) throws SQLException {
		List<Domain_Enrol> enrol_list = service.list_application_enrol(modulecode, year);
		List<ta.domain.Domain_interview> inteview_list = service.list_application_interview(modulecode, year);
		if (!enrol_list.isEmpty()) {
			for (Domain_Enrol each_enrol : enrol_list) {
				service.delete_enrol(each_enrol.getId());
			}
		}
		if (!inteview_list.isEmpty()) {
			for (Domain_interview each_inter : inteview_list) {
				service.delete_an_interview(each_inter.getId());
			}

		}

		return service.delete_a_vacancy(modulecode, year);
	}

	@RequestMapping(value = "/TA/create/vacancy")
	public boolean create_vacancy(@RequestParam(value = "module_code", required = true) String module_code,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "title", required = true) String title,
			@RequestParam(value = "total_hours", required = false) int total_hours,
			@RequestParam(value = "times", required = true) String time,
			@RequestParam(value = "master_phd_only", required = true) int masterphdonly,
			@RequestParam(value = "deadline", required = true) Date application_deadline,
			@RequestParam(value = "quntities_TA", required = true) int quntities_TA,
			@RequestParam(value = "skills") String skills, @RequestParam(value = "IDE") String IDE,
			@RequestParam(value = "updateinsert", required = true) String updateinsert,
			@RequestParam(value = "description", required = false) String description,
			@RequestParam(value = "p_skills", required = false) float percentage_skills,
			@RequestParam(value = "p_ides", required = false) float percentage_ides,
			@RequestParam(value = "p_grade", required = false) float percentage_grade,
			@RequestParam(value = "subject", required = false) String subject

	) throws SQLException, ParseException {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		boolean status = false;
		// System.out.println(auth.getName());
		Optional<Domain_Registration> Professor = service.findacandidateid(auth.getName());
		Create_a_vacancy_domain.setId(module_code + year);

		Create_a_vacancy_domain.setModulecode(module_code);
		Create_a_vacancy_domain.setYear(year);
		Create_a_vacancy_domain.setTitle(title);
		Create_a_vacancy_domain.setApplication_deadline(application_deadline);
		Create_a_vacancy_domain.setTotal_hours(total_hours);
		Create_a_vacancy_domain.setTime(time);
		Create_a_vacancy_domain.setMasterphdonly(masterphdonly);
		Create_a_vacancy_domain.setQuntities_TA(quntities_TA);
		Create_a_vacancy_domain.setSkills(skills);
		Create_a_vacancy_domain.setiDE(IDE);
		Create_a_vacancy_domain.setDescription(description);
		Create_a_vacancy_domain.setPercentage_ides(percentage_ides);
		Create_a_vacancy_domain.setPercentage_skills(percentage_skills);
		Create_a_vacancy_domain.setPercentage_grade(percentage_grade);
		Create_a_vacancy_domain.setSubject(subject);
		Create_a_vacancy_domain.setCurrentStatus(0);
		Create_a_vacancy_domain.setStatus_of_allocation("0");// 0 means awaiting for being allocated
		if (updateinsert.equals("insert")) {
			Create_a_vacancy_domain.setProfessor(Professor.get());
			status = service.save_vacancy(Create_a_vacancy_domain);

			List<Domain_Registration> Can = service.FindCanBySubject(subject);
			SendNewApplication(module_code + " " + title, description, Can);

		} else if (updateinsert.equals("update")) {
			// System.out.println(updateinsert);
			Optional<Domain_Applications> origi_professor = service.findmodulebyid(module_code + year);
			Create_a_vacancy_domain.setProfessor(origi_professor.get().getProfessor());
			if (!origi_professor.get().getSubject().equals(subject))
				SendAdditionalDepartments(module_code, subject, title, description);
			service.update_vacancy(Create_a_vacancy_domain);
			return true;
		}
		return status;

		// http://localhost:8080/create/vacancy?professor=%22123%22&year=%2221%22&title=%22234%22&total_hours=%22234%22&time_start=%2212:00%22&time_end=%2212:32%22&unallocated_student_only=%221%22&quntities_TA=%22123%22&grade_of_the_model=%22123%22&skills=%22123%22&IDE=%22123%22

	}

	public void SendNewApplication(String applciation, String description, List<Domain_Registration> Can) {

		Can.forEach(each -> {

			ExecutorService emailExecutor = Executors.newCachedThreadPool();
			// from you getSalesUserData() method
			emailExecutor.execute(new Runnable() {
				@Override
				public void run() {
					try {
						sendmail.NewApplication(each.getEmail(), each.getName(), applciation, description);

					} catch (InterruptedException e) {

					}
				}
			});
		});
	}

	private void SendAdditionalDepartments(String modulecode, String subject, String title, String description) {
		String[] EachSubject = subject.split(",");
		// System.err.println(EachSubject.length);
		if (EachSubject.length < 2)
			return;
		else {
			for (String A_Subject : EachSubject) {
				List<Domain_Registration> Can = service.FindCanBySubject(A_Subject);

				ExecutorService emailExecutor = Executors.newCachedThreadPool();

				// from you getSalesUserData() method
				emailExecutor.execute(new Runnable() {
					@Override
					public void run() {
						Can.forEach(each -> {
							// System.out.println(each.getEmail() + each.getName() + modulecode);
							try {
								sendmail.NewApplication(each.getEmail(), each.getName(), modulecode + " " + title,
										description);
							} catch (InterruptedException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
						});
					}
				});

			}
		}

	}

	// @RequestMapping(value = "/TA/test")
	public void test() throws SQLException {

		SendAdditionalDepartments("modulecode", "Computer Science,Marketing,Mathematics", "title", "description");
	}

	@RequestMapping(value = "/TA/enrol/candidates")
	public boolean enrol_candidates(@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "skills", required = true) String skills,
			@RequestParam(value = "ides", required = true) String ides,
			@RequestParam(value = "grade", required = true) int grade,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "experience", required = true) String experience
	// @RequestParam(value = "commercial_experience", required = true) int
	// commercial_experience
	) throws SQLException {
		// System.out.println(modulecode + year);
		Optional<Domain_Registration> masteronly = service.findacandidateid(candidates);
		Optional<Domain_Applications> moduleformaster = service.findmodulebyid(modulecode + year);

		Domain_enrol.setModuleid(moduleformaster.get());
		Domain_enrol.setCandidates(masteronly.get());
		// masteronly.get().getYearofuni();
		Domain_enrol.setId(modulecode + year + candidates);
		Domain_enrol.setModulecode(modulecode);
		Domain_enrol.setYear(year);
		Domain_enrol.setSkills(skills);
		Domain_enrol.setIDes(ides);
		Domain_enrol.setGrade_of_themodule(grade);
		Domain_enrol.setExperience(experience);
		// Domain_enrol.setCommercial_experience(commercial_experience);
		boolean status = false;
		if (moduleformaster.get().getMasterphdonly() == 1) {
			if (masteronly.get().getYearofuni() == 4 || masteronly.get().getYearofuni() == 5) {
				status = true;

			} else
				status = false;
		} else {
			status = true;
		}
		if (status == true) {
			if (service.Find_status_apllication(Domain_enrol) == true)
				return service.savebyCandidate_enrol(Domain_enrol);
			else
				return false;
		}
		return false;
// http://localhost:8080/create/vacancy?professor=%22123%22&year=%2221%22&title=%22234%22&total_hours=%22234%22&time_start=%2212:00%22&time_end=%2212:32%22&unallocated_student_only=%221%22&quntities_TA=%22123%22&grade_of_the_model=%22123%22&skills=%22123%22&IDE=%22123%22

	}

	@RequestMapping(value = "/TA/check/status/application")
	public boolean check_status_application(@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year) throws SQLException, ParseException {
		Domain_enrol.setId(modulecode + year + candidates);
		boolean status = service.Find_status_apllication(Domain_enrol);

		return status;

		// http://localhost:8080/create/vacancy?professor=%22123%22&year=%2221%22&title=%22234%22&total_hours=%22234%22&time_start=%2212:00%22&time_end=%2212:32%22&unallocated_student_only=%221%22&quntities_TA=%22123%22&grade_of_the_model=%22123%22&skills=%22123%22&IDE=%22123%22

	}

//	@RequestMapping(value = "/TA/save/suitable/candidates")
//	public String save_suitable_candidates(@RequestParam(value = "moduleid", required = true) String id)
//			throws SQLException, ParseException {
//		String status = "";
//		List<Map<String, Float>> candidateslist = (id);
//		Optional<Domain_Applications> module = service.findmodulebyid(id);
//		if (module.isPresent()) {
//			if (!candidateslist.isEmpty()) {
//				if (!module.get().getStatus_of_allocation().equals("1")) {
//					int quntities = module.get().getQuntities_TA();
//					// System.out.println(quntities);
//					int suitable_candidates = 0;
//
//					for (Map<String, Float> aa : candidateslist) {
//						// System.out.println("candidates size " + aa.size());
//						suitable_candidates += aa.size();
//					}
//					List<Domain_chosen_cadidates> allocated_manager = service.find_allocated_candidates_byyear_module(
//							module.get().getModulecode(), module.get().getYear());
//					quntities = quntities - allocated_manager.size();// minus the number already allocated by manager
//
//					if (quntities > suitable_candidates)
//						quntities = suitable_candidates;// if suitable candidates are less than demanding the system
//														// will use the number of suitable candidates as the demanding
//														// candidates
//					// System.out.println("quntities " + quntities);
//					int Initial_number = 1;
//					for (Map<String, Float> candidates : candidateslist) {
//						for (String key : candidates.keySet()) {
//							System.out.println("key " + key + " value " + candidates.get(key));
//							Optional<Domain_Registration> candi = service.findacandidateid(key);
//							Optional<Domain_Applications> moduleid = service
//									.findmodulebyid(module.get().getModulecode() + module.get().getYear());
//							domain_chosen.setCandidates(candi.get());
//							domain_chosen.setId(module.get().getModulecode() + module.get().getYear() + key);
//							domain_chosen.setModulecode(module.get().getModulecode());
//							domain_chosen.setTime(module.get().getTime());
//							domain_chosen.setTitle(module.get().getTitle());
//							domain_chosen.setYear(module.get().getYear());
//							domain_chosen.setModuleid(moduleid.get());
//							service.save_allocated_candidates(domain_chosen);
//							System.out.println(quntities + 1 == Initial_number);
//
//							if (quntities == Initial_number) {
//								System.out.println("(quntities + 1 == Initial_number " + quntities + 1 + " initial "
//										+ Initial_number);
//
//								Optional<Domain_Registration> aa = service
//										.findacandidateid(module.get().getProfessor().getId());
//
//								Create_a_vacancy_domain.setId(module.get().getId());
//								Create_a_vacancy_domain.setProfessor(module.get().getProfessor());
//								Create_a_vacancy_domain.setModulecode(module.get().getModulecode());
//								Create_a_vacancy_domain.setYear(module.get().getYear());
//								Create_a_vacancy_domain.setTitle(module.get().getTitle());
//								Create_a_vacancy_domain.setApplication_deadline(module.get().getApplication_deadline());
//								Create_a_vacancy_domain.setTotal_hours(module.get().getTotal_hours());
//								Create_a_vacancy_domain.setTime(module.get().getTime());
//								Create_a_vacancy_domain.setMasterphdonly(module.get().getMasterphdonly());
//								Create_a_vacancy_domain.setQuntities_TA(module.get().getQuntities_TA());
//								Create_a_vacancy_domain.setSkills(module.get().getSkills());
//								Create_a_vacancy_domain.setiDE(module.get().getiDE());
//								Create_a_vacancy_domain.setDescription(module.get().getDescription());
//								Create_a_vacancy_domain.setPercentage_ides(module.get().getPercentage_ides());
//								Create_a_vacancy_domain.setPercentage_skills(module.get().getPercentage_skills());
//								Create_a_vacancy_domain.setPercentage_grade(module.get().getPercentage_grade());
//								Create_a_vacancy_domain.setStatus_of_allocation("1");
//
//								service.update_aplication_status(Create_a_vacancy_domain);
//								return status = "okay";
//							}
//							Initial_number++;
//							// System.out.println("initial number " + Initial_number);
//						}
//						if (status.equals("okay"))
//							return status = "okay";
//					}
//
//				} else
//					return "has been allocated";
//
//			} else
//				return "no one applied";
//		} else {
//			System.out.println("no module is found /save/suitable/candidates");
//			return "no module is found";
//		}
//
//		return "unknown";
//	}

	@RequestMapping(value = "/TA/find/unallocated/first")
	public Object[] find_suitable_candidate(@RequestParam(value = "moduleid", required = true) String id)
			throws SQLException, ParseException, IOException {

		Object[] nothing = null;

		if (candidateslist(id).isEmpty()) {
			return nothing;
		} else {

			List<Domain_SuggestionList> candidateslist = candidateslist(id);
			Optional<Domain_Applications> module = service.findmodulebyid(id);

			Object[] final_ranking = new Object[2];// = new ArrayList<String>();

			List<Domain_SuggestionList> no_allocation = new ArrayList<Domain_SuggestionList>();
			List<Domain_SuggestionList> do_have_allocation = new ArrayList<Domain_SuggestionList>();

			if (module.isPresent()) {

				for (Domain_SuggestionList record : candidateslist) {
					String chosen_candidates = record.getId();

					List<Domain_chosen_cadidates> already_candidates = service
							.candidates_Allocated_modules(chosen_candidates, module.get().getYear());
					if (already_candidates.isEmpty()) {
						Domain_SuggestionList setter = new Domain_SuggestionList();
						Optional<Domain_Registration> find_name = service.findacandidateid(chosen_candidates);
						setter.setId(chosen_candidates);
						setter.setName(find_name.get().getName());
						setter.setCV(CheckCV(chosen_candidates));
						no_allocation.add(setter);
						System.out.println("no " + chosen_candidates);
					} else {
						Domain_SuggestionList setter = new Domain_SuggestionList();
						Optional<Domain_Registration> find_name = service.findacandidateid(chosen_candidates);
						setter.setId(chosen_candidates);
						setter.setName(find_name.get().getName());
						setter.setCV(CheckCV(chosen_candidates));
						do_have_allocation.add(setter);
						System.out.println("do have " + chosen_candidates);
					}

				}

				final_ranking[0] = (no_allocation);

				final_ranking[1] = (do_have_allocation);
				return final_ranking;

			} // module.isPresent()
		}

		return nothing;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value = "/TA/suitable/candidates/list")
	public List<Domain_SuggestionList> candidateslist(@RequestParam(value = "moduleid", required = true) String id)
			throws SQLException, ParseException, IOException {
		Optional<Domain_Applications> module = service.findmodulebyid(id);
		// System.out.println("/suitable/candidates/list "+module.get().getId());

		List<Domain_SuggestionList> suggestionLists = new ArrayList<Domain_SuggestionList>();
		Map<String, Float> suitable_candidates_ranking = new LinkedHashMap<String, Float>();
		int master_only = module.get().getMasterphdonly();// 1 means masteronly

		// fecth the list of the candidates who applied for the module
		List<Domain_Enrol> list_application = service.list_application_enrol(module.get().getModulecode(),
				module.get().getYear());
		List<String> candidates_applied_themodule = new ArrayList<>();

		// fetch the final list either master only is ticked or not

		if (list_application.size() != 0) {
			for (Domain_Enrol can : list_application) {
				if (master_only == 1) {
					Optional<Domain_Registration> check_master = findacandidate(can.getCandidates().getId());
					if (check_master.get().getYearofuni() == 4 || check_master.get().getYearofuni() == 5) {
						if (check_overlap(can.getCandidates().getId(), can.getYear(), can.getModulecode()).isEmpty())

							candidates_applied_themodule.add(can.getCandidates().getId());
					}

				} else {
					if (check_overlap(can.getCandidates().getId(), can.getYear(), can.getModulecode()).isEmpty()) {
						candidates_applied_themodule.add(can.getCandidates().getId());
					}
				}

			}
		} else {
			System.out.println("no suitable candidates after filtering out overlap and masteronly");
			return suggestionLists;
		} // fetch the final list either master only is ticked or not

		Map<String, Float> skill_rank = new LinkedHashMap<String, Float>();
		Map<String, Float> ides_rank = new LinkedHashMap<>();
		Map<String, Float> grade_rank = new LinkedHashMap<>();
		if (!candidates_applied_themodule.isEmpty()) {
			for (String applied_candidate_each : candidates_applied_themodule) {
				Optional<Domain_Enrol> candidate_enrol_detail = service
						.find_an_enrol(module.get().getModulecode() + module.get().getYear() + applied_candidate_each);
				if (candidate_enrol_detail.isPresent()) {

					// skills
					if (candidate_enrol_detail.get().getSkills().isEmpty()) {
						skill_rank.put(candidate_enrol_detail.get().getCandidates().getId(), (float) 0);
					} else {
						float score = 0;
						String[] Str_skill_created_professor = module.get().getSkills().split(",");
						String[] Str_percentage_candidates = candidate_enrol_detail.get().getSkills().split(",");

						for (int i = 0; i < Str_skill_created_professor.length; i++) {
							String[] seperate_skill_pecentage = Str_skill_created_professor[i].split("/");
							float score_the_skill = Float.parseFloat(seperate_skill_pecentage[1].replaceAll("%", ""))
									* Float.parseFloat(Str_percentage_candidates[i].replaceAll("%", "")) / 100
									* module.get().getPercentage_skills() / 100;
							score += score_the_skill;

						}
						skill_rank.put(candidate_enrol_detail.get().getCandidates().getId(), score);

					}

					// tools
					if (candidate_enrol_detail.get().getIDes().isEmpty()) {
						ides_rank.put(candidate_enrol_detail.get().getCandidates().getId(), (float) 0);
					} else {
						float score = 0;
						String[] Str_ide_created_professor = module.get().getiDE().split(",");
						String[] Str_percentage_candidates = candidate_enrol_detail.get().getIDes().split(",");

						for (int i = 0; i < Str_ide_created_professor.length; i++) {
							String[] seperate_ide_pecentage = Str_ide_created_professor[i].split("/");
							float score_the_ide = Float.parseFloat(seperate_ide_pecentage[1].replaceAll("%", ""))
									* Float.parseFloat(Str_percentage_candidates[i].replaceAll("%", "")) / 100
									* module.get().getPercentage_ides() / 100;
							score += score_the_ide;

						}
						ides_rank.put(candidate_enrol_detail.get().getCandidates().getId(), score);

					}

					grade_rank.put(candidate_enrol_detail.get().getCandidates().getId(),
							(float) candidate_enrol_detail.get().getGrade_of_themodule()
									* module.get().getPercentage_grade() / 100);

				}
			}
			for (String applied_candidate_each : candidates_applied_themodule) {

				suitable_candidates_ranking.put(applied_candidate_each, skill_rank.get(applied_candidate_each)
						+ ides_rank.get(applied_candidate_each) + grade_rank.get(applied_candidate_each));
			}
//			suitable_candidates_ranking.keySet()
//					.forEach(key -> System.out.println("ID:" + key + " Score:" + suitable_candidates_ranking.get(key)));

			Object[] final_ranking_object = suitable_candidates_ranking.entrySet().toArray();
			// score ascend

			Arrays.sort(final_ranking_object, new Comparator() {

				public int compare(Object o1, Object o2) {
					return ((Map.Entry<String, Float>) o2).getValue()
							.compareTo(((Map.Entry<String, Float>) o1).getValue());
				}
			});// score ascend
			ObjectMapper oMapper = new ObjectMapper();

			for (Object each : final_ranking_object) {

				Map map = oMapper.convertValue(each, Map.class);
				for (Object key : map.keySet()) {
					// System.out.println("acending order:" + key + " " + map.get(key));
					Domain_SuggestionList setter = new Domain_SuggestionList();
					String CanId = String.valueOf(key);
					Optional<Domain_Registration> find_name = service.findacandidateid(CanId);
					setter.setId(CanId);
					setter.setName(find_name.get().getName());
					setter.setCV(CheckCV(CanId));
					suggestionLists.add(setter);
				}

			}

			return suggestionLists;

		} else {
			System.out.println("no suitable candidates when ranking by calculating skills and tools ");
			return suggestionLists;
		}
	}

	public boolean CheckCV(String id) throws IOException {
		Optional<Domain_CV> CV = service.FindCVById(id);
		// System.out.println(id);
		if (CV.isPresent())
			return true;

		else
			return false;
	}

	@RequestMapping(value = "/TA/find/candidate")
	public Optional<Domain_Registration> findacandidate(@RequestParam(value = "id", required = true) String id)
			throws SQLException, ParseException {
		return service.findacandidateid(id);
	}

	@RequestMapping(value = "/TA/CountApplied")
	public Integer CountApplied(@RequestParam(value = "id", required = true) String id)
			throws SQLException, ParseException, IOException {
		int count = 0;
		List<Domain_SuggestionList> list = candidateslist(id);
		for (@SuppressWarnings("unused")
		Object each : list) {
			// System.out.println("each:"+each);
			count++;

		}

		return count;
	}

	@RequestMapping(value = "/TA/find/like/candidate")
	public List<Domain_Registration> findacandidate_like(@RequestParam(value = "id", required = true) String id)
			throws SQLException, ParseException {
		return service.find_candidates_onlybyid(id);
	}

	@RequestMapping(value = "/TA/find/like/member")
	public List<Domain_Registration> findamember_like(@RequestParam(value = "id", required = true) String id)
			throws SQLException, ParseException {
		return service.findBy_like_id_name(id);
	}

	@RequestMapping(value = "/TA/find/like/professor")
	public List<Domain_Registration> findprofessor_like(@RequestParam(value = "id", required = true) String id)
			throws SQLException, ParseException {
		return service.find_professor_onlybyid(id);
	}

	@RequestMapping(value = "/TA/professor/delete/interview")
	public boolean delete_interview(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year) throws SQLException, ParseException {
		List<Domain_interview> interview_data = service.find_interview_bymodulecode_year(modulecode, year);
		if (!interview_data.isEmpty()) {
			for (Domain_interview each_interview : interview_data) {
				service.delete_interview(each_interview.getId());
			}
		}
		return true;
	}

	@RequestMapping(value = "/TA/professor/find/interview")
	public List<ta.domain.Domain_interview> find_interview(
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year) throws SQLException, ParseException {
		List<Domain_interview> interview_data = service.find_interview_bymodulecode_year(modulecode, year);

		return interview_data;
	}

	@RequestMapping(value = "/TA/professor/Figure/interview")
	public List<Domain_AllocationSigns> InterviewFigure(
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year) throws SQLException, ParseException {
		List<Domain_interview> interview_data = service.find_interview_bymodulecode_year(modulecode, year);
		List<Domain_AllocationSigns> returnList = new ArrayList<Domain_AllocationSigns>();

		for (Domain_interview each : interview_data) {
			Domain_AllocationSigns allocationSigns = new Domain_AllocationSigns();
			List<String> conflict = check_interview_overlap(year, modulecode, each.getCandidates().getId());
			Integer EnrolNumber = service.CandidatesCountEnrol(each.getCandidates().getId(), year);

			allocationSigns.setId(service.findacandidateid(each.getCandidates().getId()).get());

			if (conflict.isEmpty())
				allocationSigns.setConflict(false);
			else
				allocationSigns.setConflict(true);
			if (EnrolNumber > 3)
				allocationSigns.setMorethan3Modules(true);

			returnList.add(allocationSigns);
		}

		return returnList;
	}

	@RequestMapping(value = "/TA/professor/find/an/interview")
	public Optional<Domain_interview> find__aninterview(
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "candidate", required = true) String candidate) throws SQLException, ParseException {

		// System.out.println(modulecode + " " + year + " " + candidate);

		Optional<Domain_interview> interview_data = service.findan_interview(modulecode + year + candidate);

		return interview_data;
	}

	@RequestMapping(value = "/TA/save/professor/interview")
	public boolean save_interview(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "professor", required = true) String professor) throws SQLException, ParseException {

		Optional<Domain_Registration> Candidates = service.findacandidateid(candidates);
		Optional<Domain_Applications> moduleid = service.findmodulebyid(modulecode + year);
		Domain_interview Domain_interview = new Domain_interview();
		Domain_interview.setId(modulecode + year + candidates);
		Domain_interview.setCandidates(Candidates.get());
		Domain_interview.setModulecode(modulecode);
		Domain_interview.setYear(year);
		Domain_interview.setProfeesor(professor);
		Domain_interview.setDate(new Date());
		Domain_interview.setModuleid(moduleid.get());
		service.save_interview(Domain_interview);

		return true;
	}

	@RequestMapping(value = "/TA/find/module")
	public Optional<Domain_Applications> findamodule(
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year) throws SQLException, ParseException {
		return service.findmodulebyid(modulecode + year);
	}

	@RequestMapping(value = "/TA/find/enrol/candidates")
	public Optional<Domain_Enrol> findenrol_candidatrs(
			@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "candidate", required = true) String candidate) throws SQLException, ParseException {
		return service.find_an_enrol(modulecode + year + candidate);
	}

	@RequestMapping(value = "/TA/login/check")
	public ModelAndView findacandidateforlogin(@RequestParam(value = "id", required = true) String id,
			@RequestParam(value = "password", required = true) String password) throws SQLException, ParseException {
		Optional<Domain_Registration> candidate = service.findacandidateid(id);
		if (candidate == null) {
			return null;
		} else {
			if (candidate.get().getId().equals(id) && candidate.get().getPassword().equals(password)) {
				return new ModelAndView("??", "candidate", candidate);
			}
			return null;
		}
		// login issue
	}

	@RequestMapping(value = "/TA/save/registration")
	public boolean save_a_candidate(@RequestParam(value = "id", required = true) String id,
			@RequestParam(value = "candidates", required = true) String name,
			@RequestParam(value = "password", required = true) String password,
			@RequestParam(value = "yearofuni", required = true) int yearofuni,
			@RequestParam(value = "mobile", required = true) String mobile,
			@RequestParam(value = "subject", required = true) String subject,
			@RequestParam(value = "email", required = true) String email

	) throws SQLException, ParseException {
		if (!service.findacandidateid(id).isPresent()) {
			Domain_registration.setId(id);
			Domain_registration.setName(name);
			Domain_registration.setPassword(password);
			Domain_registration.setYearofuni(yearofuni);
			Domain_registration.setMobile(mobile);
			Domain_registration.setEmail(email);
			Domain_registration.setSubject(subject);
			service.saveregistration(Domain_registration);
			// System.out.println(aa.getId());

			return true;
		} else
			return false;
	}

	@RequestMapping(value = "/TA/check/overlap")
	public Map<String, String> check_overlap(@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode)
			throws SQLException, ParseException {
		Map<String, String> conflict_map = new LinkedHashMap<String, String>();
		String allocated_Start_time = null, allocated_end_time = null, allocated_date = null;
		List<Domain_conflict_modules> conflict_list = new ArrayList<>();
		boolean conflict_status = false;
		SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy HH:mm");
		String fakeyear = "02-02-2018 ";
		Optional<Domain_Applications> the_module = service.findmodulebyid(modulecode + year);
		if (the_module.isPresent()) {
			String[] time_split = the_module.get().getTime().split(",");

			for (String time_Str : time_split) {

				String[] splite_start_end = time_Str.split("-");

				String date = splite_start_end[0].substring(0, 4).trim();
				String start_time = splite_start_end[0].replaceAll(splite_start_end[0].substring(0, 4), "");
				String end_time = splite_start_end[1];
				List<Domain_chosen_cadidates> allocated_modules = service.candidates_Allocated_modules(candidates,
						year);

				for (Domain_chosen_cadidates allocated : allocated_modules)

				{
					String[] allocated_candidates_time = allocated.getTime().split(",");
					for (String allocated_Str : allocated_candidates_time) {
						String[] allocated_start_end_splite = allocated_Str.split("-");
						allocated_date = allocated_start_end_splite[0].substring(0, 4).trim();
						allocated_Start_time = allocated_start_end_splite[0]
								.replaceAll(allocated_start_end_splite[0].substring(0, 4), "");
						allocated_end_time = allocated_start_end_splite[1];

						Date format_start_time = formatter.parse(fakeyear + start_time);
						Date format_end_time = formatter.parse(fakeyear + end_time);
						Date format_allocated_Start_time = formatter.parse(fakeyear + allocated_Start_time);
						Date format_allocated_end_time = formatter.parse(fakeyear + allocated_end_time);

						if (date.equals(allocated_date)) {
							if (format_start_time.compareTo(format_allocated_Start_time) <= 0)

							{
								if (format_end_time.compareTo(format_allocated_Start_time) > 0) {
									conflict_status = true;
								} else {
								}
							}
							if (format_start_time.compareTo(format_allocated_Start_time) >= 0) {

								if (format_allocated_end_time.compareTo(format_start_time) > 0) {
									conflict_status = true;
								} else {

								}
							}
							if (conflict_status) {
								if (!conflict_list.contains(new Domain_conflict_modules(allocated.getModulecode(),
										allocated.getTitle(),
										allocated_date + " " + allocated_Start_time + "~" + allocated_end_time))) {
									conflict_list.add(new Domain_conflict_modules(allocated.getModulecode(),
											allocated.getTitle(),
											allocated_date + " " + allocated_Start_time + "~" + allocated_end_time));
								}

								String key = allocated.getModulecode() + " " + allocated.getTitle();
								String value = allocated_date + " " + allocated_Start_time + "~" + allocated_end_time;
								if (!conflict_map.containsKey(key) && !conflict_map.containsValue(value)) {
									{
										conflict_map.put(key, value);
									}
								} else if (conflict_map.containsKey(key) && !conflict_map.containsValue(value)) {
									value = conflict_map.get(key) + value;
									conflict_map.put(key, value);
								}

								conflict_status = false;

							}

						} // date are different
					}

				} // for(Domain_chosen_cadidates allocated :allocated_modules)

			} // for(String time_Str: time_split )

		} // if(!the_module.getModulecode().isEmpty())

		/*
		 * String bb = null; for(Domain_conflict_modules aa:conflict_list) {
		 * bb="module"+aa.getModule()+" code"+aa.getModulecode(); }
		 */

		return conflict_map;
	}

	@RequestMapping(value = "/TA/h")
	public ModelAndView hom() {

		return new ModelAndView("404page", "erer", "erer");

	}

	@RequestMapping(value = "/TA/checkdatabase/module")
	public String findbymodulecode(@RequestParam(value = "module_code", required = true) String modulecode,
			@RequestParam(value = "termyear", required = true) String year) throws SQLException {
		try {
			Optional<Domain_Applications> bymodulecode = service.findmodulebyid(modulecode + year);
			if (!bymodulecode.isPresent()) {
				// 34 System.out.println(bytitle.getTitle());
				return "unused";
			} else {
				return "used";
			}
		} finally {
		}
	}

	@RequestMapping(value = "/TA/findskills")
	public List<Domain_Skills> findskill(@RequestParam(value = "skill", required = true) String skills)
			throws SQLException, JsonProcessingException {
		try {
			List<Domain_Skills> byskills = service.findkillsuggestion(skills);

			return byskills;
		} finally {
		}
	}

	@RequestMapping(value = "/TA/findsubject")
	public Iterable<Domain_subject> findsubject() throws SQLException, JsonProcessingException {
		try {
			Iterable<Domain_subject> byskills = service.findsubject();
			return byskills;
		} finally {
		}
	}

	@RequestMapping(value = "/TA/findsubject/without/own")
	public List<Domain_subject> findsubjectwithout(@RequestParam(value = "subject", required = true) String subject,
			@RequestParam(value = "subjectOrigi", required = true) String subjectOrigi)
			throws SQLException, JsonProcessingException {
//System.out.println(subject+"|"+subjectOrigi+"|");

		domain_subject.setSubject(subjectOrigi);
		// System.out.println(subject);
		try {
			List<Domain_subject> byskills = service.findsubjectlike(subject);

			byskills.remove(domain_subject);
			byskills.forEach(aa -> System.out.println(aa.getSubject()));

			return byskills;
		} finally {
		}
	}

	@RequestMapping(value = "/TA/find/registration/candidates/noconflict")
	public List<Domain_Registration> findacandidates(
			@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode)
			throws SQLException, JsonProcessingException, ParseException {
		List<Domain_Registration> candidates_list = service.find_candidates_onlybyid(candidates);
		Optional<Domain_Applications> module = service.findmodulebyid(modulecode + year);

		List<Domain_Registration> noconflict = new ArrayList<>();

		if (module.isPresent()) {
			for (Domain_Registration each_can : candidates_list) {

				Map<String, String> check_overlap = check_overlap(each_can.getId(), module.get().getYear(),
						module.get().getModulecode());
				if (check_overlap.isEmpty()) {
					noconflict.add(each_can);
				}

			}
		}
		return noconflict;
	}

	@RequestMapping(value = "/TA/find/registration/candidate/noconflict")
	public List<Domain_Registration> AdssignFind(@RequestParam(value = "candidates", required = true) String candidates,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "modulecode", required = true) String modulecode)
			throws SQLException, JsonProcessingException, ParseException {

		Optional<Domain_Applications> module = service.findmodulebyid(modulecode + year);

		List<Domain_Registration> candidates_list = new ArrayList<Domain_Registration>();

		String[] EachSubject = module.get().getSubject().split(",");

		for (String each : EachSubject) {
			candidates_list.addAll(service.findBylikeid_without_professor_managerBySubject(candidates, each));
		}
		List<Domain_Registration> noconflict = new ArrayList<>();

		if (module.isPresent()) {
			for (Domain_Registration each_can : candidates_list) {

				Map<String, String> check_overlap = check_overlap(each_can.getId(), module.get().getYear(),
						module.get().getModulecode());
				if (check_overlap.isEmpty()) {
					noconflict.add(each_can);
				}

			}
		}
		return noconflict;
	}

	@RequestMapping(value = "/TA/createskill")
	public void createskill(@RequestParam(value = "skill", required = true) String skill)
			throws SQLException, JsonProcessingException {
		try {
			Domain_skills.setSkills(skill);
			boolean byskills = service.savebyskills(Domain_skills);

			System.out.println("skills saved true susessfully " + byskills);
		} finally {
		}
	}

	@RequestMapping(value = "/TA/findIDE")
	public List<Domain_IDEs> findIDEs(@RequestParam(value = "ide", required = true) String ides)
			throws SQLException, JsonProcessingException {
		try {
			List<Domain_IDEs> byides = service.findIDEsuggestion(ides);

			return byides;
		} finally {
		}
	}

	@RequestMapping(value = "/TA/createIDE")
	public void createIDEs(@RequestParam(value = "ide", required = true) String ide)
			throws SQLException, JsonProcessingException {
		try {
			Domain_ides.setIdes(ide);

			boolean byides = service.savebyIDEs(Domain_ides);

			System.out.println("ide saved true susessfully " + byides);
		} finally {
		}
	}

	@RequestMapping(value = "/TA/professor/candidates/details")
	public ModelAndView find_candidate() {
		return new ModelAndView("findCandidates");

	}

	@RequestMapping(value = "/TA/edit")
	public ModelAndView edit_vacancy(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year,
			@RequestParam(value = "professor", required = true) String professor)
			throws InvalidDataAccessResourceUsageException, SQLException {
		// Create_a_vacancy_domain.setId(modulecode+year);
		ModelAndView modelAndView = new ModelAndView();
		Optional<Domain_Applications> module = service.findmodulebyid(modulecode + year);

		modelAndView.addObject("module", module);
		modelAndView.addObject("candidates", service.findacandidateid(professor));
		modelAndView.addObject("FirstSubject", module.get().getSubject().split(",")[0]);
		modelAndView.addObject("SUBJECTS", service.findsubject());
		modelAndView.setViewName("edit");

		return modelAndView;

	}

	@RequestMapping(value = "/TA/edit/personal", method = RequestMethod.GET)
	public ModelAndView editpersonal() {
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Optional<Domain_Registration> registration = service.findacandidateid(auth.getName());
		// System.out.println(registration.isPresent());
		modelAndView.addObject("registration", registration);
		modelAndView.addObject("user", registration);
		modelAndView.setViewName("edit_personal");
		return modelAndView;
	}

	@RequestMapping(value = "/TA/edit/personal", method = RequestMethod.POST)
	public ModelAndView createNewUser(@Valid @ModelAttribute("registration") Domain_Registration registration,
			BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();
		service.saveregistration(registration);
		modelAndView.addObject("successMessage", "okay");
		modelAndView.setViewName("edit_personal");
		return modelAndView;
	}

	@RequestMapping(value = "/TA/professor/allocation")
	public ModelAndView allocation(@RequestParam(value = "modulecode", required = true) String modulecode,
			@RequestParam(value = "year", required = true) String year)
			throws InvalidDataAccessResourceUsageException, SQLException {
		// Create_a_vacancy_domain.setId(modulecode+year);
		Optional<Domain_Applications> module = service.findmodulebyid(modulecode + year);
		ModelAndView modelAndView = new ModelAndView();

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Optional<Domain_Registration> registration = service.findacandidateid(auth.getName());

//		System.out.println(module.get().getProfessor().getId().equals(auth.getName()) + " "
//				+ module.get().getProfessor().getId() + " " + auth.getName());

		if (module.get().getProfessor().getId().equals(auth.getName()) || auth.getName().equals("11")) {
			if (module.get().getCurrentStatus() == 0) {
				module.get().setCurrentStatus(1);
				// System.out.println("Status" + module.get().getCurrentStatus());

				service.update_vacancy(module.get());
			}
			modelAndView.addObject("module", service.findmodulebyid(modulecode + year));
			modelAndView.addObject("registration", registration);
			modelAndView.addObject("unauthrorised", false);
			modelAndView.setViewName("Allocation");
			return modelAndView;
		} else {
			modelAndView.addObject("unauthrorised", true);
			modelAndView.setViewName("Allocation");
			return modelAndView;
		}
	}

	@RequestMapping(value = "/aa")
	public void aaa() throws SQLException, ParseException, JsonParseException, JsonMappingException, IOException {

	}

}
