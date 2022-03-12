package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.AgentDAO;
import com.model.Agent;

/**
 * Servlet implementation class AgentController
 */
public class AgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AgentDAO agentDAO;
	private ArrayList<Agent> agents;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgentController() {
        super();
        this.agentDAO = new AgentDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String formUrl="agent.jsp";
		Agent agent = new Agent();
		String aff = request.getParameter("aff") != null?request.getParameter("aff"):"true";
		if(!aff.equals("true")) {
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String role = request.getParameter("role");
			agent.setNom(nom);
			agent.setPrenom(prenom);
			agent.setRole(role);
			
			if(role.equals("Admin")) {
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				agent.setPassword(password);
				agent.setLogin(email);
			}
			this.agentDAO.addObjet(agent);
			request.setAttribute("add", "true");
		}
		this.agents = new ArrayList<Agent>();
		this.agents = this.agentDAO.findAll();
		request.setAttribute("listAgent", this.agents );
		
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
