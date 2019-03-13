package ta.Component;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import ta.controller.Controller;
import ta.domain.Domain_Enrol;
import ta.domain.Domain_IDEs;
import ta.domain.Domain_Registration;
import ta.domain.Domain_Skills;
import ta.domain.Domain_SuggestionList;
import ta.domain.Domain_chosen_cadidates;
import ta.domain.Domain_Applications;
import ta.service.Service_Query;

@Component
public class ScheduledTasks {
	@Autowired
	private Service_Query service;

	Domain_Applications Create_a_vacancy_domain = new Domain_Applications();

	Domain_Skills Domain_skills = new Domain_Skills();

	Domain_IDEs Domain_ides = new Domain_IDEs();

	Domain_chosen_cadidates domain_chosen = new Domain_chosen_cadidates();
	Domain_Enrol Domain_enrol = new Domain_Enrol();
	Domain_Registration Domain_registration = new Domain_Registration();
	@Autowired
	private Controller controller;
	@Autowired
	private Mail sendmail;
	private static final Logger log = LoggerFactory.getLogger(ScheduledTasks.class);

	@Scheduled(cron = "0 0 10 * * *") // 10am every single day
	// @Scheduled(cron = "*/30 * * * * *")
	public void check_application() throws SQLException, ParseException {
		List<Domain_Applications> list_of_pending = service.application_check_deadline();
		// System.out.println(dateFormat.format(new Date()));

		if (list_of_pending.isEmpty()) {
			log.info("emails are going to be sent due to the module deadline");
		} else {
			for (Domain_Applications each_pending : list_of_pending) {
				Optional<Domain_Registration> find_email = service
						.findacandidateid(each_pending.getProfessor().getId());
				if (find_email.isPresent()) {
					System.out.println(find_email.get().getEmail());
					controller.DeadlineAlarm(find_email.get().getEmail(), find_email.get().getName(),
							each_pending.getTitle(), each_pending.getModulecode());
					log.info("The module is now in selecting stage" + each_pending.getModulecode() + " " + each_pending.getTitle());
				}

			}

		}
	}

	//@Scheduled(cron = "*/10 * * * * *")//10 seconds
	 //@Scheduled(cron = "0 0 2 * * *") // 2am
	public void AutoAssign() {

		List<Domain_Applications> Over14DaysList = service.findOver14Days();
		// System.out.println("Hello");
		Over14DaysList.forEach(each -> {
			String CandidateInput = "";
			String CandidatesName = "";
			int NumberOfCandidatesAssignedSystem = 0;
			try {
				List<Domain_SuggestionList> SuitableList = controller.candidateslist(each.getId());

				if (!SuitableList.isEmpty()) {
					for (Domain_SuggestionList EachSuitableCandiadate : SuitableList) {
						if (NumberOfCandidatesAssignedSystem >= each.getQuntities_TA())
							break;
						NumberOfCandidatesAssignedSystem++;
						CandidateInput += EachSuitableCandiadate.getId() + ",";
						CandidatesName += EachSuitableCandiadate.getId() + " " + EachSuitableCandiadate.getName() + ",";
						

					}
					if (!CandidateInput.isEmpty()) {

						controller.assign_candidates(each.getYear(), each.getModulecode(),
								CandidateInput.substring(0, CandidateInput.length() - 1));

						sendmail.AutomaticAllocationInform(each.getProfessor().getEmail(),
								each.getProfessor().getName(), each.getModulecode() + " " + each.getTitle(),
								CandidatesName.substring(0, CandidatesName.length() - 1), each.getQuntities_TA(),
								NumberOfCandidatesAssignedSystem);
					}
				} else {
					sendmail.FaildAllocation(each.getProfessor().getEmail(), each.getProfessor().getName(),
							each.getModulecode() + " " + each.getTitle());

				}

			} catch (SQLException | ParseException | IOException | InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			log.info("AutoAllocation " + each.getId() + " " + each.getTitle());
		});

	}

	@Scheduled(cron = "0 0 2 * * *")
	public void WarnOver7Days() {
		List<Domain_Applications> Over7DaysList = service.findOver7Days();
		Over7DaysList.forEach(each -> {
			sendmail.Warn7days(each.getProfessor().getEmail(), each.getProfessor().getName(),
					each.getTitle() + " " + each.getYear());

		});

	}

}

//// System.out.println(each_pending.getId());
//String status = controller.save_suitable_candidates(each_pending.getId());
//
//log.info("TA allocation of the module " + each_pending.getModulecode() + " status: " + status);
//
//if (status.equals("okay")) {
//	List<Domain_chosen_cadidates> find_chosen_candidates = service
//			.find_allocated_candidates_byyear_module(each_pending.getModulecode(),
//					each_pending.getYear());
//
//	for (Domain_chosen_cadidates each_candidate : find_chosen_candidates) {
//		Optional<Domain_Registration> candidate_detail = service
//				.findacandidateid(each_candidate.getChosen_candidates());
//		if (candidate_detail.isPresent()) {
//			String name = candidate_detail.get().getName();
//			String email = candidate_detail.get().getEmail();
//			String id = candidate_detail.get().getId();
//			controller.sendemail(email, name, each_pending.getTitle() + " " + each_pending.getYear(),
//					id, each_pending.getDescription());
//			log.info("email was sent to " + email + " candidates: " + id + " " + name);
//
//		}
//	}
//}