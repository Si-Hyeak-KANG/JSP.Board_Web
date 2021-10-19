package user;

public class MemberService {

	MemberDAO memberDAO;
	
	public MemberService() {

		memberDAO = new MemberDAO();

	}
	
	public void addMember(MemberVO member) {
		
		memberDAO.insertNewMember(member);
	}
	
	public int idCheck(String id) {
		int result = memberDAO.selectAllId(id);
		return result;
	}
	
	public void memberLogin(String id,String pwd) {
		memberDAO.selectMemberId(id);
		memberDAO.selectMemberPwd(pwd);
		memberDAO.selectMemberAdmin();
	}
}
