package frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import controller_command.LoginServiceCon;

@WebServlet("*.do")
public class frontcontroller extends HttpServlet {
	
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 한글 인코딩		
		request.setCharacterEncoding("euc-kr");
		
		String reqURI = request.getRequestURI();
		System.out.println("요청 URI : " + reqURI);
		
		String path = request.getContextPath();
		System.out.println("프로젝트 이름 : " + path);
		
		String resultURI = reqURI.substring(path.length()+1);
		System.out.println("요청 : " + resultURI);
		
		Command command = null;
		
		if(resultURI.equals("LoginServiceCon.do")) {
			command = new LoginServiceCon(); // 업캐스팅(자동 형변환)
			// LoginServiceCon lsc = new LoginServiceCon();			
		} /*
			 * else if(resultURI.equals("JoinServiceCon.do")) { command = new
			 * JoinServiceCon(); // JoinServiceCon jsc = new JoinServiceCon(); }else
			 * if(resultURI.equals("MessageServiceCon.do")) { command = new
			 * MessageServiceCon(); }
			 */
		String moveURL = command.execute(request, response);
		response.sendRedirect(moveURL);
	}

}
