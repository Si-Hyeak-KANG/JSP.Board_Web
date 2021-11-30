package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	Connection conn;
	PreparedStatement pstmt;
	DataSource dataFactory;
	
	public MemberDAO() {
		
		try {
			
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 회원 생성
	public void insertNewMember(MemberVO member) {
		
		String id = member.getId();
		String pwd = member.getPwd();
		String name = member.getName();
		String email = member.getEmail();
		String admin = member.getAdmin();
		
		try {
			conn = dataFactory.getConnection();
			String query = "INSERT INTO B_member (id,pwd,name,email,admin)"
							+ " VALUES (?,?,?,?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, admin);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 아이디 중복 확인
	public int selectAllId(String id) {
		int result=-1; // 오류 발생
		
		try {
			conn = dataFactory.getConnection();
			String query = "SELECT id from B_member where id=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				result=1; // 존재할 경우
				System.out.println("result 값: " + result );
			}else {
				result=0; // 존재하지 않을 경우
				System.out.println("result 값: " + result);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 아이디, 패스워드 존재 유무 체크
	public boolean selectMemberId(MemberVO member) {
		
		boolean idExist = false; // 아이디 존재 유무
		String id = member.getId();
		String pwd = member.getPwd();
		
		try {
			conn = dataFactory.getConnection();
			String query = "SELECT admin from B_table where id=?,pwd=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) { // 회원이 있을 시
				
				idExist = true;
				String admin = rs.getString("admin");
				member.setAdmin("admin");
				
				return idExist;
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return idExist;
	}



}
