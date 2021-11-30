package user;

public class MemberService {

	MemberDAO memberDAO;
	
	public MemberService() {

		memberDAO = new MemberDAO();

	}
	
	// 회원 추가
	public void addMember(MemberVO member) {
		
		memberDAO.insertNewMember(member);
	}
	
	// id 중복 체크
	public int idCheck(String id) {
		
		return memberDAO.selectAllId(id);
	}
	
	// 로그인
	public boolean memberLogin(MemberVO member) {
		
		return memberDAO.selectMemberId(member);
		
	}
}