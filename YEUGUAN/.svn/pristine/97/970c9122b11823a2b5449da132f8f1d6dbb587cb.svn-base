package ta.Component;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ICS {
	

	public String ICSFormat(String CandidateName,String ProfessorName,String to,String Description,String Subject,String StartingTime,String EndingTime,String Loacation,String cc) {
		
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
		String NowTime = dateFormat.format(new Date());
		String IcsFormat="BEGIN:VCALENDAR\n"
	            + "PRODID:-//Microsoft Corporation//Outlook 9.0 MIMEDIR//EN\n"
	            + "VERSION:2.0\n"
	            + "METHOD:REQUEST\n"
	            
	            + "BEGIN:VEVENT\n"
	            +"ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE;EN="+CandidateName+":MAILTO:"+to+"\n"        
	            + "ORGANIZER;EN="+ProfessorName+":MAILTO:"+cc+"\n"
	            + "DTSTART;TZID=Europe/London:" + StartingTime + "\n"
	            + "DTEND;TZID=Europe/London:" + EndingTime + "\n"
	            + "LOCATION:"+Loacation+"\n"
	            + "TRANSP:OPAQUE\n"
	            + "SEQUENCE:0\n"
	            + "UID:" +"5555" + "\n"
	            + "DTSTAMP:"+NowTime+"\n"
	            + "CATEGORIES:Meeting\n"
	            + "DESCRIPTION:" +Description  + "\n"
	            + "SUMMARY:" + Subject + "\n"
	            + "PRIORITY:5\n"
	            + "CLASS:PUBLIC\n"+
				"BEGIN:VALARM\n" + 
				"DESCRIPTION:REMINDER\n" + 
				"TRIGGER;RELATED=START:-PT30M\n" + 
				"ACTION:DISPLAY\n" + 
				"END:VALARM\n"  
	            + "END:VEVENT\n"
	            + "END:VCALENDAR"
	            ;

		//System.out.println(IcsFormat+"\n");
		return IcsFormat;
	}
	
	
	
	
	}
