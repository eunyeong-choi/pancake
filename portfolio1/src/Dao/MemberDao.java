package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dto.Member;

public class MemberDao {
	
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	private static MemberDao instance = new MemberDao();
	
	public static MemberDao getinstance() {
		return instance;
	}
	
	public MemberDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pancake?serverTime=UTC","root","971130");
			System.out.println("DB연동 성공");
		} catch (Exception e) {}
	}
	
	public int signup(Member member) {
		String sql = "insert into member(id,password,name,email,phone,checkbox) value(?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getPhone());
			pstmt.setInt(6, member.getCheckbox());
			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	
	public int login(String id, String password) {
		String sql = "select * from member where id = ? and password = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			
			pstmt.executeQuery();
			
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	//마이페이지 조회
	public Member mypageview(String id) {
		String sql = "select * from member where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Member member = new Member(
						rs.getInt(1), rs.getString(2), 
						rs.getString(3), rs.getString(4), 
						rs.getString(5), rs.getString(6), rs.getInt(7), rs.getString(8));
					return member;
				}
		} catch (Exception e) {}
		return null;
	}
	//회원정보 수정
	public int memberupdate(String id, String name, String email, String image) {
		String sql = "update member set name = ?, email = ?, image = ? where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, image);
			pstmt.setString(4, id);
			
			pstmt.executeUpdate();
			
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	//회원탈퇴
	public int memderdelete(String id, String password) {
		String sql = "delete from member where id = ? and password = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			
			pstmt.executeUpdate();
			return 1;
		} catch (Exception e) {}
		return 0;
	}
	
}
