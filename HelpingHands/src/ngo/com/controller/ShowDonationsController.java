package ngo.com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ngo.com.bo.Donation;
import ngo.com.dao.DonationDao;
import ngo.com.factory.dao.DaoFactory;


public class ShowDonationsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DonationDao studentDao = DaoFactory.getDonationDao();
		List<Donation> list  = studentDao.getAllDonations();
		request.setAttribute("donationList", list);
		request.getRequestDispatcher("Your_Donation.jsp").forward(request, response);
	}


}
