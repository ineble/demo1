package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cal")
public class cal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		request.setCharacterEncoding("utf-8");
   		response.setContentType("text/html;charset=utf-8");
   		PrintWriter writer = response.getWriter();
   		String command = request.getParameter("command");
   		String won = request.getParameter("won");
   		String operator = request.getParameter("operator");
   		if(command != null && command.equals("calculate")) {
   			String result = calculate(Float.parseFloat(won),operator);
   			writer.print("<html><font size=10>변환결과</font><br>");
   			writer.print("<font size = 10>" + result + "</font><br>");
   			writer.print("<a href='/pro05/cal>환율계산기</a></html>");
   			return;
   		}
   		writer.print("<html><title>환율 계산기</title>");
   		writer.print("<font size=5>환율 계산기</font><br>");
   		writer.print("<form name='frmCalc' method='get' action='/pro05/cal' />");
   		writer.print("원화 : <input type='text' name='won' size=10 />");
   		writer.print("<select name='operator'>");
   		writer.print("<option value='dollar'>달러</option>");
   		writer.print("<option value='en'>엔화</option>");
   		writer.print("</select>");
   		writer.print("<input type='hidden' name='command' value='calculate' />");
   		writer.print("<input type='submit' value='변환' />");
   		writer.print("</form>");
   		writer.print("</html>");

	}
	private String calculate(float won, String operator) {
		String result = null;
		float USD_RATE = (float) 1200.0;
		float JPY_Rate = (float) 10.0;
		if(operator.equals("dollar")) {
			result=String.format("%.6f", won /USD_RATE);
		}else if(operator.equals("en")){
			String.format("%.6f", won/JPY_Rate);
		}
		return result;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
