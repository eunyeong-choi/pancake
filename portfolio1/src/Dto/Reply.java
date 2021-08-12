package Dto;

public class Reply {
	private int rno;
	private String rcontents;
	private String rwriter;
	private String date;
	private int bno;
	
	public Reply() {}

	public Reply(int rno, String rcontents, String rwriter, String date, int bno) {
		this.rno = rno;
		this.rcontents = rcontents;
		this.rwriter = rwriter;
		this.date = date;
		this.bno = bno;
	}
	
	public Reply(String rcontents, String rwriter, int bno) {
		this.rcontents = rcontents;
		this.rwriter = rwriter;
		this.bno = bno;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getRcontents() {
		return rcontents;
	}

	public void setRcontents(String rcontents) {
		this.rcontents = rcontents;
	}

	public String getRwriter() {
		return rwriter;
	}

	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}
}
