package ngo.com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

import ngo.com.bo.Donation;


public class CreateDonationPdf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Donation newDonation = (Donation)request.getAttribute("donation");
		String fileName = "G:\\test.pdf";
		
		Document document = new Document();
		try{
			 PdfWriter.getInstance(document, new FileOutputStream(new File(fileName)));
			 document.open();
			 
	         Font f = new Font();
	         f.setStyle(Font.BOLD);
	         f.setColor(0, 0, 128);
	         f.setStyle(Font.UNDERLINE);
	         f.setSize(20);
	         
			 Paragraph p = new Paragraph("Helping Hands", f);
	         p.setAlignment(Element.ALIGN_CENTER);
	         document.add(p); 
	         
	         Paragraph p2 = new Paragraph("Dear sir / ma'am,");
	         p2.setSpacingBefore(30);
	         p2.setSpacingAfter(15);
	         document.add(p2); 
	         
	         document.add(new Paragraph("You have initiated a donation of -"));
	         
	         Paragraph p4 = new Paragraph();
	         p4.setSpacingBefore(10);
	         p4.setSpacingAfter(10);
	         p4.setIndentationLeft(20);
	         
	         p4.add("Category: " + newDonation.getCategory() +"\n");
	         p4.add("Details of items: " + newDonation.getItemDetails());
	         document.add(p4);
	         
	         p2 = new Paragraph("");
	         Chunk chunk = new Chunk("These items will be picked up within 5 days by our nearest NGO branch.. Please prepare them for delivery..\nIt's a great initiative by you..\nThanking You.\n\nTeam\nHelping Hands");
	         p2.add(chunk);
	         document.add(p2);
	         
	         document.close();
		       
	         System.out.println("Done");
	         
	        /* request.setAttribute("message", "donation Initiated Successfully..");*/
	         request.setAttribute("donation", newDonation);
	         request.getRequestDispatcher("sendDonationEmail").forward(request, response);
	        
		} catch (Exception e) {
            e.printStackTrace();
        }
	}


}
