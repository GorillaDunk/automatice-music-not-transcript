package controller_command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

public class LoginServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String moveURL = null;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDAO dao = new MemberDAO();
		MemberDTO member = dao.loginCheck(id, pw);

		// next() : 다음행으로 넘어가서 데이터 존재 여부를 판단한다.
		if (member!=null) { // member 정보가 DB에 있다면
			// 세션을 활용한 로그인 기능 구현
			// 1. 세션 객체를 생성
			// 2. 세션에 닉네임을 저장
			HttpSession session = request.getSession();
			session.setAttribute("member", member);

			moveURL = "index1_main.jsp";
			// getEmail값을 email에 담아 전달한다.
		} else {
			moveURL = "index2_login.jsp";
		}
		
		return moveURL;
	}

}
