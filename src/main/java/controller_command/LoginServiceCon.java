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

		// next() : ���������� �Ѿ�� ������ ���� ���θ� �Ǵ��Ѵ�.
		if (member!=null) { // member ������ DB�� �ִٸ�
			// ������ Ȱ���� �α��� ��� ����
			// 1. ���� ��ü�� ����
			// 2. ���ǿ� �г����� ����
			HttpSession session = request.getSession();
			session.setAttribute("member", member);

			moveURL = "index1_main.jsp";
			// getEmail���� email�� ��� �����Ѵ�.
		} else {
			moveURL = "index2_login.jsp";
		}
		
		return moveURL;
	}

}
