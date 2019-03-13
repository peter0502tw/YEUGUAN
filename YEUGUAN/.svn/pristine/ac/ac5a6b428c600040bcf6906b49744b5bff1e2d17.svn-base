package ta.Component;

import java.io.IOException;

import javax.activation.DataHandler;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.AddressException;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class Mail {

	@Autowired
	public JavaMailSender emailSender;

	@Autowired
	public Mail(JavaMailSender javaMailSender) {
		this.emailSender = javaMailSender;
	}

	public void InformAllocation(String to, String name, String application, String description) throws InterruptedException {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Application:" + application);
		message.setText("Hi " + name + ",\n"
				+ "The email is to inform that you have been chosen for being the teacher assistant of the module "
				+ application + "  you applied \n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "Description:"
				+ description + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "This email was automatically sent to " + to + ", by the Allocation System.No reply!");
		emailSender.send(message);
	

	}


	public void NewApplication(String to, String name, String application, String description)
			throws InterruptedException {
	
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Application:" + application);
		message.setText("Hi " + name + ",\n" + "A new applition has been opened." + "\n"
				+ " You are now able to apply for it " + "\n" + application + "  " + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "\n" + "Description:" + description + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "This email was automatically sent to " + to + ", by the Allocation System.No reply!");
		emailSender.send(message);
		
	}

	public void CandidatesListEmpty(String to, String name, String application) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Application:" + application);
		message.setText("Hi " + name + ",\n" + "There is no any suitable candidates in the database for the module "
				+ application + "  " + "\n" + "\n"
				+ "Because all of them have been chosen or no candidates applied for it" + "\n" + "\n" + "\n" + "\n"
				+ "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "This email was automatically sent to "
				+ to + ", by the Allocation System.No reply!");
		emailSender.send(message);

	}

	public void AutomaticAllocationInform(String to, String name, String application, String CandidatesList,
			int RequriedTAs, int TAsAssignedSystem) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Application:" + application);
		message.setText("Hi " + name + ",\n" + "The module " + application
				+ "  has not been done the allocation Process and it has been 14days. As a result, the system has assigned "
				+ CandidatesList + " for the module as teaching assistants" + "\n" + "\n"
				+ "Number of teaching assistants you required: " + RequriedTAs + "\n" + "\n"
				+ "Number of teaching assistants the system assigned:" + TAsAssignedSystem + "\n" + "\n" + "\n" + "\n"
				+ "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "This email was automatically sent to " + to
				+ ", by the Allocation System.No reply!");
		emailSender.send(message);

	}

	public void FaildAllocation(String to, String name, String application) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Application:" + application);
		message.setText("Hi " + name + ",\n" + "The module " + application
				+ "  has not been done the allocation Process and it has been 14days. However, there is no suitable candidates in the database.Please seek for help from the manager.  "
				+ "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "This email was automatically sent to " + to + ", by the Allocation System.No reply!");
		emailSender.send(message);

	}

	public void Warn7days(String to, String name, String application) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Application:" + application);
		message.setText("Hi " + name + ",\n" + "The module " + application
				+ " has not been done the allocation Process and it has been 7days due to the deadline. If the professor does not wish to do further action the system will allocate candidates from the suggestion list automatically in 7 days."
				+ "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "This email was automatically sent to " + to + ", by the Allocation System.No reply!");
		emailSender.send(message);

	}

	public void refuse_email(String to, String name, String application) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Application:" + application);
		message.setText("Hi " + name + ",\n"
				+ "The email is to inform that you were not chosen for being the teacher assistant of the module "
				+ application + "  you applied \n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "\n" + "\n" + "\n" + "\n" + "\n" + "This email was automatically sent to " + to
				+ ", by the Allocation System.No reply!");
		emailSender.send(message);

	}

	public void informProfessor_interview_delete(String professor, String to, String candidateid, String candidateName,
			String module_conflict, String application) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("NO Reply Application:" + module_conflict + " " + application);
		message.setText("Hi Professor " + professor + ",\n" + "The email is to inform that the candidate: "
				+ candidateid + " " + candidateName
				+ "  you have chosen for an interview for the Teacher assistants of the " + module_conflict + " "
				+ application
				+ " has been assigned to another module which overlaps with your module by the module of the professor\n"
				+ "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "This email was automatically sent to " + to + ", by the Allocation System. No reply!");
		emailSender.send(message);

	}

//		public void SendInterview(String to,String content, String application,String strudentID,String cc) {
//
//			SimpleMailMessage message = new SimpleMailMessage();
//			message.setTo(to);
//			message.setCc(cc);
//			message.setSubject("TA allocation system:Arrage the interview of the application:"+application+" Student ID:"+strudentID);
//			message.setText("\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					content+	"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"\n" + 
//					"This email was sent to "+to+", by the Allocation System."+"\n" + "Please contact the professor with the address: "+cc+" if you have further questions");
//			emailSender.send(message);
//		}	
	public void DeadlineAlarm(String to, String application, String modulecode, String Name) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);

		message.setSubject("TA allocation system:Deadline of the module " + modulecode + " " + application);
		message.setText("\n" + "\n" + "\n" + "Dear " + Name + "\n" + "\n" + "The module of " + modulecode + " "
				+ application + " has now closed " + "\n" + "\n" + "\n" + "\n"
				+ "Please login to before interviewing or assigning  " + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "\n" + "\n" + "This email was sent to " + to + ", by the Allocation System.");
		emailSender.send(message);
	}

	public void SendInterview(String to, String content, String StudentName, String application, String strudentID,
			String cc, String defaultStartingDate, String defaultEndingDate, String place, String ProfessorName)
			throws AddressException, MessagingException, IOException {
		MimeMessage message = emailSender.createMimeMessage();
		message.addHeaderLine("charset=UTF-8");
		message.addHeaderLine("component=VEVENT");
		message.addHeaderLine("method=REQUEST");
		message.setText("\n" + "\n" + "\n" + "\n" + "\n" + content + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n"
				+ "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "\n" + "This email was sent to " + to
				+ ", by the Allocation System." + "\n" + "Please contact the professor with the address: " + cc
				+ " if you have further questions");

		message.setFrom(cc);

		message.addRecipients(Message.RecipientType.TO, to);
		message.addRecipients(Message.RecipientType.CC, cc);
		message.setSubject("Arrage the interview of the application:" + application + " Student ID:" + strudentID);

		BodyPart messageBodyPart = new MimeBodyPart();

		ICS ICSFormat = new ICS();
		String IcsFile = ICSFormat.ICSFormat(StudentName, ProfessorName, to,
				"Professor:" + ProfessorName + " Candidate:" + StudentName + " Module:" + application + " " + content,
				"interview " + application + " Student ID:" + strudentID, defaultStartingDate, defaultEndingDate, place,
				cc);

		messageBodyPart.setHeader("Content-Class", "urn:content-classes:calendarmessage");
		messageBodyPart.setHeader("Content-ID", "calendar_message");
		messageBodyPart.setDataHandler(new DataHandler(new ByteArrayDataSource(IcsFile, "text/calendar")));// very
																											// important
		messageBodyPart.setFileName("Meeting");
		Multipart multipart = new MimeMultipart();

		multipart.addBodyPart(messageBodyPart);
		message.setContent(multipart);

		emailSender.send(message);

	}

}
