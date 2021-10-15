package user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService memberService;
	MemberVO memberVO;
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		memberService = new MemberService();
		memberVO = new MemberVO();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); // 세션 생성
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String nextPage= null;
		String action = request.getPathInfo();
		System.out.println("action: " + action);
		
		
		try {
			
			if(action==null) {
				nextPage="/jsp/loginForm.jsp";
				
			} else if (action.equals("/loginForm.do")) {	// login page
				nextPage="/jsp/loginForm.jsp";
				
			} else if (action.equals("/joinMemberForm.do")) {	// move joinMemberForm
				nextPage="/jsp/joinMember.jsp";
				
			}else if(action.equals("/dbCheckId.do")) {
				
				String id = request.getParameter("user_id");
				System.out.println("id를 가져옴: " + id);
				int result = memberService.idCheck(id);
				session.setAttribute("result", result);
				nextPage="/jsp/dbCheckId.jsp";
				
			}else if (action.equals("/joinMember.do")) {	// success join
				String id = request.getParameter("id");
				String pwd = request.getParameter("pwd");
				String name =request.getParameter("name");
				String email = request.getParameter("email");
				String admin = request.getParameter("check-st"); // is it admin?
				memberVO.setId(id);
				memberVO.setPwd(pwd);
				memberVO.setName(name);
				memberVO.setEmail(email);
				memberVO.setAdmin(admin);
				
				memberService.addMember(memberVO);
				
				String state;
				if(admin.equals("Y")) {
					System.out.println("관리자로 회원가입했습니다.");
					state = "관리자";
				} else {
					System.out.println("일반 유저로 회원가입했습니다.");
					state = "일반 유저";
				}
				PrintWriter pw = response.getWriter();
				pw.println("<script>" + " alert('"+state+"로 회원가입했습니다.');" + " location.href='" + request.getContextPath() + "/member/loginForm.do';" + " </script>");
				
				return;
				
			} else {
				nextPage="/jsp/loginForm.jsp";
			}
			
			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
