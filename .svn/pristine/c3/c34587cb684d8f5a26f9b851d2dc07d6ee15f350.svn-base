package ta.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;

@Entity
public class Domain_CV {

    private long id;
    private String fileName;
    private byte[] data;
    private Domain_Registration CandiID;
    private Date date;
 
    @Id
    @GeneratedValue
    @Column(name = "FILE_ID")
    public long getId() {
        return id;
    }
 
    public void setId(long id) {
        this.id = id;
    }
 
    @Column(name = "FILE_NAME")
    public String getFileName() {
        return fileName;
    }
 
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
 


    

    @OneToOne
   	@JoinColumn(name = "CandiID")
	public Domain_Registration getCandiID() {
		return CandiID;
	}

	public void setCandiID(Domain_Registration candiID) {
		CandiID = candiID;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Lob
    @Column(name = "FILE_DATA")
	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

   




}
