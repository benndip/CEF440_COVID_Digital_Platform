package net.javaguides.beneficiary.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.beneficiary.dao.beneficiarydao;
import net.javaguides.beneficiary.model.beneficiary;

/**
 * Servlet implementation class beneficiaryServlet
 */
@WebServlet("/research")
public class beneficiaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private beneficiarydao beneficier = new beneficiarydao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public beneficiaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/beneficiaryregister.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String firstname = request.getParameter("firstname");
	 String lastname = request.getParameter("lastname");
	 String familysize = request.getParameter("familysize");
	 String address = request.getParameter("address");
	 String contact = request.getParameter("contact");
	 String town = request.getParameter("town");
	 String profession = request.getParameter("profession");
	 
	 beneficiary Beneficier = new beneficiary();
	 Beneficier.setFirstname(firstname);
	 Beneficier.setLastname(lastname);
	 Beneficier.setFamilysize(familysize);
	 Beneficier.setAddress(address);
	 Beneficier.setContact(contact);
	 Beneficier.setTown(town);
	 Beneficier.setProfession(profession);
	 
	 try {
		beneficier.registerbeneficiary(Beneficier);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/beneficiarydetails.jsp");
	 dispatcher.forward(request, response);
	}

}
