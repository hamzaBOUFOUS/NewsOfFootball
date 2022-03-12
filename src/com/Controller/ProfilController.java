package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AgentDAO;

/**
 * Servlet implementation class ProfilController
 */
public class ProfilController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AgentDAO agentDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfilController() {
        super();
        this.agentDAO = new AgentDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String formUrl="profiladmin.jsp";
		HttpSession session = request.getSession(false);
		long idAdmin = (Long)session.getAttribute("agent");
		request.setAttribute("agent", this.agentDAO.findById(idAdmin));
		RequestDispatcher dispatcher = request.getRequestDispatcher(formUrl);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
