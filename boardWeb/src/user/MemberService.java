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
}
