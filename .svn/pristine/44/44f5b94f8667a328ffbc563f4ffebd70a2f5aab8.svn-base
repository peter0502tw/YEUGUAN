package ta.controller;

import java.util.Date;
import java.util.Optional;
import java.util.concurrent.TimeUnit;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import ta.domain.Domain_Enrol;
import ta.domain.Domain_IDEs;
import ta.domain.Domain_Registration;
import ta.domain.Domain_Skills;
import ta.domain.Domain_chosen_cadidates;
import ta.domain.Domain_interview;
import ta.domain.Domain_subject;
import ta.domain.Domain_Applications;
import ta.domain.Domain_CV;
import ta.service.Service_Query;

@RequestMapping(value = { "/TA_Gradle" })
@RestController
public class Security_controller {

	
	///
	@Autowired
	private Service_Query service;

	Domain_Applications Create_a_vacancy_domain = new Domain_Applications();

	Domain_Skills Domain_skills = new Domain_Skills();

	Domain_IDEs Domain_ides = new Domain_IDEs();

	Domain_chosen_cadidates domain_chosen = new Domain_chosen_cadidates();
	Domain_Enrol Domain_enrol = new Domain_Enrol();
	Domain_Registration Domain_registration = new Domain_Registration();
	Domain_interview Domain_interview = new Domain_interview();

	@RequestMapping(value = { "/TA/login", "/TA", "/" }, method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error) {
		ModelAndView modelAndView = new ModelAndView();

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (!(auth instanceof AnonymousAuthenticationToken)) {

			/* The user is logged in :) */
			return new ModelAndView("redirect:/TA/default");
		}

		if (error != null) {
			modelAndView.addObject("error", "Invalid Credentials provided.");
		}
		modelAndView.setViewName("login");
		return modelAndView;
	}

	@RequestMapping(value = "/TA/registration", method = RequestMethod.GET)
	public ModelAndView registration() {
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (!(auth instanceof AnonymousAuthenticationToken)) {

			/* The user is logged in :) */
			return new ModelAndView("redirect:/TA/default");
		}
		Domain_Registration registration = new Domain_Registration();
		Iterable<Domain_subject> subject = service.findsubject();
		modelAndView.addObject("registration", registration);
		modelAndView.addObject("subject", subject);
		modelAndView.setViewName("Registration");
		return modelAndView;
	}

	@RequestMapping(value = "/TA/registration", method = RequestMethod.POST)
	public ModelAndView createNewUser(@Valid @ModelAttribute("registration") Domain_Registration registration,
			BindingResult bindingResult) {
		ModelAndView modelAndView = new ModelAndView();
		// System.out.println(registration.getId());
		Optional<Domain_Registration> userExists = service.findacandidateid(registration.getId());

		if (userExists.isPresent()) {
			bindingResult.reject("error.registration", "The id has been used");
		}
		if (bindingResult.hasErrors()) {

			Iterable<Domain_subject> subject = service.findsubject();
			modelAndView.addObject("subject", subject);
			modelAndView.setViewName("Registration");

		} else {
			service.saveregistration(registration);
			modelAndView.addObject("successMessage", "User has been registered successfully");
			modelAndView.addObject("registration", new Domain_Registration());
			modelAndView.setViewName("Registration");
		}
		return modelAndView;
	}

	@RequestMapping(value = { "/TA/default" })
	public ModelAndView defaultPage(@RequestParam(value = "history", required = false) String history,
			@RequestParam(value = "view", required = false) String view,
			@RequestParam(value = "search", required = false) String search,
			@RequestParam(value = "CreateSubject", required = false) String CreateSubject,
			@RequestParam(value = "CV", required = false) String CV,
			@RequestParam(value = "CanView", required = false) String Can_View,
			@RequestParam(value = "UploadMessage", required = false) String UploadMessage) {
		String url = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Optional<Domain_Registration> user = service.findacandidateid(auth.getName());
		ModelAndView modelAndView = new ModelAndView();

		if (user.get().getYearofuni() == 6)
			url = "professor";
		else if (user.get().getYearofuni() == 7) {
			if (history != null) {
				if (history.equals("1")) {
					modelAndView.addObject("history", service.findhistory());
					modelAndView.addObject("status", true);
					for (String aa : service.findhistory()) {
						System.out.println(aa);
					}
				}
			} else if (view != null) {
				System.out.println(view);
				if (view.equals("1"))
					modelAndView.addObject("view", true);
			} else if (search != null) {
				if (search.equals("1"))
					modelAndView.addObject("search", true);

			} else if (CreateSubject != null) {
				if (CreateSubject.equals("1"))
					modelAndView.addObject("CreateSubject", true);

			}

			url = "manager";
		} else {
			if (CV != null) {
				if (CV.equals("1")) {
					modelAndView.addObject("CV", true);
					Optional<Domain_CV> file = service.FindCVById(auth.getName());
					if (file.isPresent()) {
						Date t1 = new Date();
						Date t2 = file.get().getDate();

						long diffInMillies = Math.abs(t1.getTime() - t2.getTime());
						long diff = TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
						if (diff == 1)
							modelAndView.addObject("Upload_Date", diff + " day ago ");
						else
							modelAndView.addObject("Upload_Date", diff + " days ago ");
					} else
						modelAndView.addObject("Upload_Date", "You have not uploaded CV yet");

				}
				if (UploadMessage != null) {
					if (UploadMessage.equals("Invalid File")) {
						System.out.println("invalidFile");
						modelAndView.addObject("Message", "invalidFile");
					}

					else if (UploadMessage.equals("The size of the document is too large")) {
						System.out.println("The size of the document is too large");
						modelAndView.addObject("Message", "The size of the document is too large");
					} else if (UploadMessage.equals("Successfully")) {
						System.out.println("sucessfully");
						modelAndView.addObject("Message", "sucessfully");
					}
				}

			}
			if (Can_View != null) {
				if (Can_View.equals("1"))
					System.out.println("test");
				modelAndView.addObject("CanView", true);
			}
			System.out.println(UploadMessage + " " + CV);

			url = "candidates";
		}
		modelAndView.addObject("candidates", user);
		modelAndView.setViewName(url);

		return modelAndView;
	}

	@RequestMapping(value = "/TA/professor/create")
	public ModelAndView professor_create_vacancy() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Optional<Domain_Registration> user = service.findacandidateid(auth.getName());
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("SUBJECTS", service.findsubject());
		modelAndView.addObject("candidates", user);
		modelAndView.setViewName("createvacancy");
		return modelAndView;

	}

	@RequestMapping(value = { "/TA/access/denied" }, method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		ModelAndView model = new ModelAndView();
		model.setViewName("access_denied");
		return model;
	}

//	 @RequestMapping(value= {"/logout"}, method=RequestMethod.GET)
//	 public void logout() {
//	  
//	 }
}