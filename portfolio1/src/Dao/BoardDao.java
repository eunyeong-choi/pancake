package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Dto.Board;

public class BoardDao {
	
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	private static BoardDao instance = new BoardDao();
	
	public static BoardDao getinstance() {
		return instance;
	}
	
	public BoardDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pancake?serverTime=UTC","root","971130");
			System.out.println("DB연동 성공");
		} catch (Exception e) {}
	}
	
	//게시글 등록
	public int boardwrite(Board board) {
		String sql = "insert into board(title, contents, writer, count) values(?,?,?,?)";
		try {
			pstmt  = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContents());
			pstmt.setString(3, board.getWriter());
			pstmt.setInt(4, board.getCount());
			
			System.out.println(board.getTitle());
			System.out.println(board.getContents());
			System.out.println(board.getWriter());
			System.out.println(board.getCount());
			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	
	//게시글 출력
	public ArrayList<Board>boardlist(){
		ArrayList<Board> boards = new ArrayList<Board>();
		String sql = "select * from board order by bno desc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board board = new Board(rs.getInt(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6));
				boards.add(board);
			}
			return boards;
		} catch (Exception e) {}
		return null;
	}
	//게시글 내용출력
	public Board bdetail(int bno) {
		String sql = "select * from board where bno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Board board = new Board(rs.getInt(1), 
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6));
				return board;
			}
		} catch (Exception e) {}
		return null;
	}
	//게시글 삭제 메소드
	public int boarddelete(int bno) {
		String sql = "delete from board where bno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	//게시글 수정 메소드(제목, 내용)
	public int boardupdate(int bno, String title, String contents) {
		String sql = "update board set title = ?, contents = ? where bno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, contents);
			pstmt.setInt(3, bno);
			
			pstmt.executeUpdate();
			System.out.println(bno);
			System.out.println(title);
			System.out.println(contents);
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	//카운트 증가 메소드
	public void countup(int bno) {
		String sql = "update board set count = count + 1 where bno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			pstmt.executeUpdate();
		}catch (Exception e) {}
	}
}
