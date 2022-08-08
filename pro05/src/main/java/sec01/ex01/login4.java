package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login4
 */
@WebServlet("/login4")
public class login4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
    	response.setContentType("text/html;charset=utf-8");
    	PrintWriter writer = response.getWriter();
    	String id = request.getParameter("fname");
    	String pw = request.getParameter("fpass");
    	
    	String data = "<html>";
    	data += "<body>";
    	data += "아이디 : " + id + "<br>";
    	data += "비밀번호 : " + pw + "<br>";
    	data += "</body>";
    	data += "</html>";
		writer.print(data);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
