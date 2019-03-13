package ta.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Domain_interview {

	@Id
	@Column(name = "id")
	String id;

	@ManyToOne
	@JoinColumn(name = "candidates")
	Domain_Registration candidates;

	@Column(name = "modulecode")
	String modulecode;

	@Column(name = "year")
	String year;

	@Column(name = "profeesor")
	String profeesor;
	@Column(name = "date")
	Date date;
	@Column(name = "content")
	String content;

	@ManyToOne
	@JoinColumn(name = "moduleid")
	Domain_Applications moduleid;

	@Column(name = "MeetingDate")
	String MeetingDate;

	@Column(name = "MeetingPlace")
	String MeetingPlace;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getModulecode() {
		return modulecode;
	}

	public void setModulecode(String modulecode) {
		this.modulecode = modulecode;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getProfeesor() {
		return profeesor;
	}

	public void setProfeesor(String profeesor) {
		this.profeesor = profeesor;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date2) {
		this.date = date2;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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



	public String getMeetingPlace() {
		return MeetingPlace;
	}

	public void setMeetingPlace(String meetingPlace) {
		MeetingPlace = meetingPlace;
	}

	public String getMeetingDate() {
		return MeetingDate;
	}

	public void setMeetingDate(String meetingDate) {
		MeetingDate = meetingDate;
	}

}
