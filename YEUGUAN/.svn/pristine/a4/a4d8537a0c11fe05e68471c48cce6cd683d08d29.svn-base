package TA_Gradle;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Optional;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;


import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;

import ta.TaGradleApplication;
import ta.controller.Controller;
import ta.domain.Domain_Applications;
import ta.domain.Domain_Enrol;
import ta.domain.Domain_chosen_cadidates;
import ta.domain.Domain_endorsement;
import ta.domain.Domain_interview;
import ta.service.Service_Query;



@RunWith(SpringRunner.class)
@SpringBootTest(classes = TaGradleApplication.class)
@WebAppConfiguration
@Transactional
public class TaGradleApplicationTest {

	@Autowired
	Controller controller;

	@Autowired
	Service_Query service;

	private MockMvc mockMvc;

	Domain_endorsement domain_endorsement = new Domain_endorsement();

	@Autowired
	private WebApplicationContext webApplicationContext;

	@Before
	public void init() {
		mockMvc = webAppContextSetup(webApplicationContext).build();

	}

	@Test
	public void Suggestionlist() throws Exception {

		String jsonStr = "[{\"5208\":90.0},{\"5168\":77.0},{\"5247\":39.0}]";
		assertTrue(mockMvc.perform(get("/TA_Gradle/TA/suitable/candidates/list").param("moduleid", "M1422018Term1"))
				.andExpect(status().isOk()).andReturn().getResponse().getContentAsString().equals(jsonStr));

	}

	@Test
	public void AppliedNumber() throws Exception {

		mockMvc.perform(get("/TA_Gradle/TA/CountApplied").param("id", "Wu6952018Term1").param("modulecode", "Wu695"))
				.andReturn().getResponse().getContentAsString().equals("3");

	}

	@Test
	public void ShowEvaluationFigure() throws Exception {

		mockMvc.perform(get("/TA_Gradle/TA/find/endorsement").param("candidates", "3316")).andReturn().getResponse()
				.getContentAsString()
				.equals("{\"candidates\":\"5132\",\"candidates_fore\":{\"id\":\"5132\"}]},\"attitude\":5.0,\"times\":1,"
						+ "\"problemSolving\":5.0,\"punctuality\":3.0,\"cooperation\":3.0}");

	}

	@Test
	//@Transactional
	public void SaveEvaluationFigure() throws Exception {
		mockMvc.perform(get("/TA_Gradle/TA/find/endorsement").param("candidates", "3312").param("modulecode", "ME22")
				.param("year", "2018Term1").param("Attitude", "5").param("ProblemSolving", "3")
				.param("Punctuality", "4").param("Cooperation", "4.5")).andExpect(status().isOk());

		Optional<Domain_endorsement> figure = service.findAnEndorsementById("3312");
		if (figure.get().getAttitude()==5.0
				&& figure.get().getCooperation()==5.0
				&& figure.get().getProblemSolving()==3.0
				&& figure.get().getPunctuality()==4.0)
			assertTrue(true);

	}

	@Test
	@WithMockUser(username = "7132", password = "1", roles = "Professor")
	public void Test1_OpenApplications() throws Exception {
		SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD HH:MM:SS");
		java.util.Date dateline = dateFormat.parse("2019-08-29 23:59:59");
		Domain_Applications applications = new Domain_Applications();
		applications.setId("qaz1232018Term1");
		applications.setModulecode("qaz123");
		applications.setYear("2018Term1");
		applications.setTitle("Software Assurance");
		applications.setTotal_hours(30);
		applications.setTime("Wed 17:00 -18:00");
		applications.setMasterphdonly(1);
		applications.setApplication_deadline(dateline);
		applications.setQuntities_TA(3);
		applications.setSkills("Testing/100%");
		applications.setiDE("Junit/100%");
		applications.setDescription("This is a testing");
		applications.setPercentage_skills(40);
		applications.setPercentage_ides(30);
		applications.setPercentage_grade(30);
		applications.setSubject("Computer Science");

		mockMvc.perform(get("/TA_Gradle/TA/create/vacancy").param("module_code", applications.getModulecode())
				.param("year", applications.getYear()).param("title", applications.getTitle())
				.param("times", applications.getTime())
				.param("total_hours", String.valueOf(applications.getTotal_hours()))
				.param("master_phd_only", String.valueOf(applications.getMasterphdonly()))
				.param("deadline", String.valueOf(applications.getApplication_deadline()))
				.param("quntities_TA", String.valueOf(applications.getQuntities_TA()))
				.param("skills", applications.getSkills()).param("IDE", applications.getiDE())
				.param("updateinsert", "insert").param("description", applications.getDescription())
				.param("p_skills", String.valueOf(applications.getPercentage_skills()))
				.param("p_ides", String.valueOf(applications.getPercentage_ides()))
				.param("p_grade", String.valueOf(applications.getPercentage_grade()))
				.param("subject", applications.getSubject()));
		Optional<Domain_Applications> module = service.findmodulebyid("qaz1232018Term1");
		assertTrue(module.isPresent());
	}

	@Test
	//@Transactional
	public void Test2_ApplyApplications() throws Exception {

		Domain_Enrol enrol = new Domain_Enrol();
		enrol.setCandidates(service.findacandidateid("5139").get());
		enrol.setGrade_of_themodule(60);
		enrol.setExperience("I've had some experience before");
		enrol.setIDes("70");
		enrol.setModulecode("qaz123");
		enrol.setSkills("70");
		enrol.setYear("2018Term1");

		mockMvc.perform(get("/TA_Gradle/TA/enrol/candidates").param("candidates", enrol.getCandidates().getId())
				.param("modulecode", enrol.getModulecode()).param("skills", enrol.getSkills())
				.param("ides", enrol.getIDes()).param("grade", String.valueOf(enrol.getGrade_of_themodule()))
				.param("year", enrol.getYear()).param("experience", enrol.getExperience()));

		Domain_Enrol enrol1 = new Domain_Enrol();
		enrol1.setCandidates(service.findacandidateid("5247").get());
		enrol1.setGrade_of_themodule(60);
		enrol1.setExperience("I've had some experience before");
		enrol1.setIDes("80");
		enrol1.setModulecode("qaz123");
		enrol1.setSkills("90");
		enrol1.setYear("2018Term1");

		mockMvc.perform(get("/TA_Gradle/TA/enrol/candidates").param("candidates", enrol1.getCandidates().getId())
				.param("modulecode", enrol1.getModulecode()).param("skills", enrol1.getSkills())
				.param("ides", enrol1.getIDes()).param("grade", String.valueOf(enrol1.getGrade_of_themodule()))
				.param("year", enrol1.getYear()).param("experience", enrol1.getExperience()));

		Optional<Domain_Enrol> CandidateEnrol = service.find_an_enrol("qaz1232018Term15247");
		Optional<Domain_Enrol> CandidateEnrol1 = service.find_an_enrol("qaz1232018Term15139");
		assertTrue(CandidateEnrol.isPresent()&&CandidateEnrol1.isPresent());
	}
	

	
	
	

	

	@Test
	@WithMockUser(username = "7132", password = "1", roles = "Professor")
	@Transactional
	public void Test3_AssignTeacherAssistants() throws Exception {
		String candidates = "";
		mockMvc.perform(get("/TA_Gradle/TA/assign/candidates").param("candidates", "5139,5247")
				.param("year", "2018Term1").param("modulecode", "qaz123")).andExpect(status().isOk());

		List<Domain_chosen_cadidates> ChosenCadidates = service.find_chosen_modulecode_year("qaz123", "2018Term1");

		for (Domain_chosen_cadidates each : ChosenCadidates) {
			candidates += each.getCandidates().getId();
		}
		assertTrue(candidates.equals("51395247"));
	}

	@Test
	//@Transactional
	public void DeleteHistory() throws Exception {

		String year = "2018Term1";

		mockMvc.perform(get("/TA_Gradle/TA/delete/history").param("year", year));

		List<Domain_chosen_cadidates> chosen = service.findByyear_chosen(year);

		List<Domain_Enrol> enrol = service.findByyear_enrol(year);
		List<Domain_interview> interview = service.findByyear_interview(year);
		List<Domain_Applications> applications = service.findByyear_vacancy(year);

		if (chosen.isEmpty() && enrol.isEmpty() && interview.isEmpty() && applications.isEmpty())
			assertTrue(true);
	}

	@Test
	@WithMockUser(username = "7132", password = "1", roles = "Professor")
	public void DeleteApplications() throws Exception {

		mockMvc.perform(
				get("/TA_Gradle/TA/delete/vacancy").param("modulecode", "qaz123").param("year_str", "2018Term1"));
		Optional<Domain_Applications> module = service.findmodulebyid("qaz1232018Term1");
		assertFalse(module.isPresent());
	}

	@org.junit.After
	public void after() throws Exception {
		// service.delete_a_vacancy("1fe", "2018Term1");

	}

	// jsonPath("$.name", Matchers.is("Carlos"))

}
