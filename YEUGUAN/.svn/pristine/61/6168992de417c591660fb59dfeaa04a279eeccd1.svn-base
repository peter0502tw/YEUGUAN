package ta.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Domain_subject {
	@Id
	@Column(name = "subject")
	String subject;

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	@Override
	public boolean equals(Object o) {
		Domain_subject d = (Domain_subject) o;
		return this.subject.equals(d.getSubject());
	}
	@Override
	public int hashCode() {
		System.out.println("Compare!!!!");
		return 0;
	}
	
	
	
}
