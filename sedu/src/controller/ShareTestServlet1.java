package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vo.CountVO;
@WebServlet("/sharetest1")
public class ShareTestServlet1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int param = Integer.parseInt(request.getParameter("num"));
		CountVO vo = new CountVO();
		vo.setNumber(param);
		request.setAttribute("objreq", vo);
		request.getRequestDispatcher("/jspexam/share1.jsp").
		              forward(request, response);
	}
}
