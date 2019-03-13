package ta.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class Domain_chosen_cadidates {


	@Id
	@Column(name = "id")
	String id;
	
	@Column(name = "year")
	String year;
	
	@Column(name = "modulecode")
	String modulecode;
	
	@Column(name = "title")
	String title;
	
	@Column(name = "time")
	String time;
	
	@ManyToOne
	@JoinColumn(name = "candidates")
	Domain_Registration candidates;
	
	@Column(name = "endorsment")
	int endorsment;
	@Column(name = "ChosenDate")
	Date ChosenDate;
	@Column(name = "professor")
	String professor;
	
	@ManyToOne
	@JoinColumn(name = "moduleid")
	Domain_Applications moduleid;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}



	public int getEndorsment() {
		return endorsment;
	}

	public void setEndorsment(int endorsment) {
		this.endorsment = endorsment;
	}

	public Date getChosenDate() {
		return ChosenDate;
	}

	public void setChosenDate(Date chosenDate) {
		ChosenDate = chosenDate;
	}

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}

	public Domain_Registration getCandidates() {
		return candidates;
	}

	public void setCandidates(Domain_Registration candidates) {
		this.candidates = candidates;
	}

	public Domain_Applications getModuleid() {
		return moduleid;
	}

	public void setModuleid(Domain_Applications moduleid) {
		this.moduleid = moduleid;
	}


	
}
