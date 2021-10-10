package user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



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
			} else if (action.equals("/joinMember.do")) {	// success join
				nextPage="/member/loginForm.do";
				String id = request.getParameter("id");
				String pwd = request.getParameter("pwd");
				String name =request.getParameter("name");
				String email = request.getParameter("email");
				
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
