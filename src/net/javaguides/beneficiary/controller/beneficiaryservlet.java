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

/*
 * Servlet implementation class beneficiaryServlet
 */
@WebServlet("/research")
public class beneficiaryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private beneficiarydao beneficier = new beneficiarydao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public beneficiaryservlet() {
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
	 String covidcounter = request.getParameter("covidcounter");
	 String aidscounter = request.getParameter("aidscounter");
	 String hpbcounter = request.getParameter("hpbcounter");
	 String diabetescounter = request.getParameter("diabetescounter");
	 String cardiacdiseasecounter = request.getParameter("cardiacdiseasecounter");
	 String cancercounter = request.getParameter("cancercounter");
	 String lungdiseasecounter = request.getParameter("lungdiseasecounter");
	 String asthmacounter = request.getParameter("asthmacounter");
	 
	 beneficiary Beneficier = new beneficiary();
	 Beneficier.setCovidcounter(covidcounter);
	 Beneficier.setAidscounter(aidscounter);
	 Beneficier.setHpbcounter(hpbcounter);
	 Beneficier.setDiabetescounter(diabetescounter);
	 Beneficier.setCardiacdiseasecounter(cardiacdiseasecounter);
	 Beneficier.setCancercounter(cancercounter);
	 Beneficier.setLungdiseasecounter(lungdiseasecounter);
	 Beneficier.setAsthmacounter(asthmacounter);
	 
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
