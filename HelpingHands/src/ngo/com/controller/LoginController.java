package ngo.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ngo.com.bo.User;
import ngo.com.dao.UserDao;
import ngo.com.factory.dao.DaoFactory;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginId=request.getParameter("login_id");
		String loginPassword=request.getParameter("login_password");
		
		 UserDao userDao  = DaoFactory.getUserDao();
		 User user = userDao.validate(loginId, loginPassword);
		 if(user!=null){
			 HttpSession session = request.getSession();
			 session.setAttribute("user", user);
			 response.sendRedirect("index.jsp");
			 
		 }else{
			 request.setAttribute("error_msg", "Invalid login id or password");
			 request.getRequestDispatcher("login.jsp").forward(request, response);
		 }
	}

}
