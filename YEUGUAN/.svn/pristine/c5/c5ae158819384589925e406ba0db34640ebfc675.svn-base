package ta.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Domain_Enrol {

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

	@Column(name = "skills")
	String skills;
	@Column(name = "IDes")
	String IDes;
	@Column(name = "grade_of_themodule")
	int grade_of_themodule;
	@Column(name = "experience",length = 3000)
	String experience;

	@ManyToOne
	@JoinColumn(name = "moduleid")
	Domain_Applications moduleid;

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

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getIDes() {
		return IDes;
	}

	public void setIDes(String iDes) {
		IDes = iDes;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getGrade_of_themodule() {
		return grade_of_themodule;
	}

	public void setGrade_of_themodule(int grade_of_themodule) {
		this.grade_of_themodule = grade_of_themodule;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
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
