package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.AgentDAO;
import com.model.Agent;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AgentDAO agentDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        this.agentDAO = new AgentDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login ="index.jsp";
        HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher = null;
		
		boolean loggedIn = session != null && session.getAttribute("agent") != null;
		String email = request.getParameter("email");
        String password = request.getParameter("password");
		String auth = request.getParameter("auth") != null?request.getParameter("auth"):"false";
		if(loggedIn) {
			dispatcher = request.getRequestDispatcher("/dashboard");
		}else if(auth.equals("true") ) {
	        Agent agent = this.agentDAO.loginTest(email, password);
	        if(agent != null) {
	        	request.getSession().setAttribute("agent", agent.getIdAgent());
				dispatcher = request.getRequestDispatcher("/dashboard");
	        }else {
				request.setAttribute("invalide", "true");
				dispatcher = request.getRequestDispatcher(login);
	        }
		}else if(!request.getRequestURI().contains("/login")){
			request.setAttribute("auth", "false");
			dispatcher = request.getRequestDispatcher(login);
		}else {
			dispatcher = request.getRequestDispatcher(login);
		}
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
