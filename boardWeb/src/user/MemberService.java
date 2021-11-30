package user;

public class MemberService {

	MemberDAO memberDAO;
	
	public MemberService() {

		memberDAO = new MemberDAO();

	}
	
	// ȸ�� �߰�
	public void addMember(MemberVO member) {
		
		memberDAO.insertNewMember(member);
	}
	
	// id �ߺ� üũ
	public int idCheck(String id) {
		
		return memberDAO.selectAllId(id);
	}
	
	// �α���
	public boolean memberLogin(MemberVO member) {
		
		return memberDAO.selectMemberId(member);
		
	}
}