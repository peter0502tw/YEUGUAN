package ta.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Domain_endorsement {

	@Id
	@Column(name = "candidates")
	String candidates;

	@OneToOne
	@JoinColumn(name = "candidate_fore")
	Domain_Registration candidates_fore;

	@Column(name = "Attitude")
	float attitude;

	@Column(name = "ProblemSolving")
	float ProblemSolving;

	@Column(name = "Punctuality")
	float Punctuality;
	@Column(name = "Cooperation")
	float Cooperation;
	@Column(name = "times")
	int times;

	public float getAttitude() {
		return attitude;
	}

	public void setAttitude(float attitude) {
		this.attitude = attitude;
	}

	public float getProblemSolving() {
		return ProblemSolving;
	}

	public void setProblemSolving(float problemSolving) {
		ProblemSolving = problemSolving;
	}

	public float getPunctuality() {
		return Punctuality;
	}

	public void setPunctuality(float punctuality) {
		Punctuality = punctuality;
	}

	public float getCooperation() {
		return Cooperation;
	}

	public void setCooperation(float cooperation) {
		Cooperation = cooperation;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}

	public String getCandidates() {
		return candidates;
	}

	public void setCandidates(String candidates) {
		this.candidates = candidates;
	}

	public Domain_Registration getCandidates_fore() {
		return candidates_fore;
	}

	public void setCandidates_fore(Domain_Registration candidates_fore) {
		this.candidates_fore = candidates_fore;
	}

}
