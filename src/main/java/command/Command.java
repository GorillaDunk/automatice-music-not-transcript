package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	// 추상 메소드 (인터페이스 안에는 무조건 추상 메소드만 들어갈 수 있기 때문에 abstract 안적어 줘도 되는데 그냥 적었다.)
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
	
}

