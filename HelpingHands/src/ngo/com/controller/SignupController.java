package ngo.com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ngo.com.dao.UserDao;
import ngo.com.factory.dao.DaoFactory;


public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuilder errorCode=new StringBuilder();
		String Name=request.getParameter("user_name");
		String Email=request.getParameter("user_email");
		String Password=request.getParameter("user_password");
		String mobile=request.getParameter("user_mobile");
		String role=request.getParameter("user_role");
		String str=Name;
		boolean hasAlphabet=true;
	      char[] charArray = str.toCharArray();
	      for (int i = 0; i < charArray.length; i++) {
	         char ch = charArray[i];
	         if (!((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') || ch==' ')) {
	        	 hasAlphabet= false;
	        	 break;
	         }
	      }
	      if(!hasAlphabet)
	    	  errorCode.append("Invalid name entered<br>");
		long contact=0;
		try{
			contact=Long.parseLong(mobile);
		}catch(NumberFormatException e){
			errorCode.append("Contact No. should be number<br>");
		}
		
		UserDao userDao  = DaoFactory.getUserDao();
		 boolean result = userDao.signup(Name,Email,Password,role,contact);
		 if(result){
			 response.sendRedirect("login.jsp?addMsg="+ "Signup successful");

		 }else{
			 request.setAttribute("loginError", errorCode.toString());
			 request.getRequestDispatcher("SignupPart3.jsp").forward(request, response);
				
		 }
	}

}
