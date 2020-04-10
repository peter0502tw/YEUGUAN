package ta.domain;

public class Domain_conflict_modules {
String modulecode;
	public Domain_conflict_modules(String modulecode, String module, String time) {
	super();
	this.modulecode = modulecode;
	this.module = module;
	this.time = time;
}
	public Domain_conflict_modules() {

	}
	
	String module;
	String time;
	public String getModulecode() {
		return modulecode;
	}
	public void setModulecode(String modulecode) {
		this.modulecode = modulecode;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public boolean equals(Object o) {
		Domain_conflict_modules d = (Domain_conflict_modules) o;
		boolean b = d.modulecode==modulecode;
		boolean c = d.module==module;
		boolean c2 = d.time.trim().contains(time.trim());
		//System.out.print("Compare:"+d.modulecode+" "+modulecode+"/"+d.module+" "+module+"/"+d.time.length()+time.length());
		//System.out.println(b+" "+c+" "+c2);
		return b&& c&&c2;
	}
	@Override
	public int hashCode() {
		System.out.println("Compare!!!!");
		return 0;
	}
	
}
