package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Dto.Reply;

public class ReplyDao {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	private static ReplyDao instance = new ReplyDao();
	public static ReplyDao getinstance() {
		return instance;
	}
	public ReplyDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pancake?serverTime=UTC","root","971130");
			System.out.println("DB연동 성공");
		} catch (Exception e) {}
	}
	//댓글 등록메소드
	public int replywrite(Reply reply) {
		String sql = "insert into reply(rcontents, rwriter, bno) values(?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reply.getRcontents());
			pstmt.setString(2, reply.getRwriter());
			pstmt.setInt(3, reply.getBno());
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	//댓글 출력
	public ArrayList<Reply>replylist(int bno){
		ArrayList<Reply> replys = new ArrayList<Reply>();
		String sql = "select * from reply where bno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Reply reply = new Reply(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5));
				replys.add(reply);
			}
			return replys;
		} catch (Exception e) {}
		return null;
	}
	//댓글 삭제
	public int replydelete(int rno) {
		String sql = "delete from reply where rno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {}
		return 0;
	}
}
