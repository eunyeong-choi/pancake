package Dto;

public class Board {
	
	private int bno;
	private String title;
	private String contents;
	private String writer;
	private String date;
	private int count;
	
	public Board() {}

	public Board(int bno, String title, String contents, String writer, String date, int count) {
		this.bno = bno;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.date = date;
		this.count = count;
	}
	
	public Board(String title, String contents, String writer, int count) {
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.count = count;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
}
