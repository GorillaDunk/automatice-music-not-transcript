package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	// �߻� �޼ҵ� (�������̽� �ȿ��� ������ �߻� �޼ҵ常 �� �� �ֱ� ������ abstract ������ �൵ �Ǵµ� �׳� ������.)
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
	
}

