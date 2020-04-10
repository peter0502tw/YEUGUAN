package ta.domain;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Domain_Applications {

	public String getModulecode() {
		return modulecode;
	}

	public void setModulecode(String modulecode) {
		this.modulecode = modulecode;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getTotal_hours() {
		return total_hours;
	}

	public void setTotal_hours(int total_hours) {
		this.total_hours = total_hours;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getMasterphdonly() {
		return masterphdonly;
	}

	public void setMasterphdonly(int masterphdonly) {
		this.masterphdonly = masterphdonly;
	}

	public Date getApplication_deadline() {
		return application_deadline;
	}

	public void setApplication_deadline(Date application_deadline) {
		this.application_deadline = application_deadline;
	}

	public int getQuntities_TA() {
		return quntities_TA;
	}

	public void setQuntities_TA(int quntities_TA) {
		this.quntities_TA = quntities_TA;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getiDE() {
		return iDE;
	}

	public void setiDE(String iDE) {
		this.iDE = iDE;
	}

	@Id
	@Column(name = "id")
	String id;

	@Column(name = "modulecode")
	String modulecode;
	@Column(name = "subject")
	String subject;

	@Column(name = "title")
	String title;

	@ManyToOne
	@JoinColumn(name = "professor")
	Domain_Registration professor;

	@Column(name = "year")
	String year;
	@Column(name = "totalhours")
	int total_hours;

	@Column(name = "times")
	String time;

	@Column(name = "masterphdonly")
	int masterphdonly;

	@Column(name = "application_deadline")
	Date application_deadline;

	@Column(name = "quntitiesTA")
	int quntities_TA;

	@Column(name = "skills")
	String skills;

	@Column(name = "iDE")
	String iDE;

	@Column(name = "status_of_allocation")
	String status_of_allocation;
	@Column(name = "description", length = 3000)
	String description;

	@Column(name = "percentage_skills")
	float percentage_skills;
	@Column(name = "percentage_ides")
	float percentage_ides;
	@Column(name = "percentage_grade")
	float percentage_grade;

	boolean EnrolStatus;

	int CurrentStatus;

	public String getStatus_of_allocation() {
		return status_of_allocation;
	}

	public void setStatus_of_allocation(String status_of_allocation) {
		this.status_of_allocation = status_of_allocation;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public float getPercentage_skills() {
		return percentage_skills;
	}

	public void setPercentage_skills(float percentage_skills) {
		this.percentage_skills = percentage_skills;
	}

	public float getPercentage_ides() {
		return percentage_ides;
	}

	public void setPercentage_ides(float percentage_ides) {
		this.percentage_ides = percentage_ides;
	}

	public float getPercentage_grade() {
		return percentage_grade;
	}

	public void setPercentage_grade(float percentage_grade) {
		this.percentage_grade = percentage_grade;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Domain_Registration getProfessor() {
		return professor;
	}

	public void setProfessor(Domain_Registration professor) {
		this.professor = professor;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean getEnrolStatus() {
		return EnrolStatus;
	}

	public void setEnrolStatus(boolean enrolStatus) {
		EnrolStatus = enrolStatus;
	}

	public int getCurrentStatus() {
		return CurrentStatus;
	}

	public void setCurrentStatus(int currentStatus) {
		CurrentStatus = currentStatus;
	}

}
