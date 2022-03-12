package com.Filter;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;

/**
 * Servlet Filter implementation class AuthentificationFilter
 */
@WebFilter("/AuthentificationFilter")
public class AuthentificationFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuthentificationFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);
        String loginURI = request.getContextPath() + "/login";
        
        boolean loggedIn = session != null && session.getAttribute("agent") != null;
        boolean loginRequest = request.getRequestURI().equals(loginURI+"?auth=true");
        if(loggedIn && (request.getRequestURI().equals(request.getContextPath()) 
        		|| request.getRequestURI().equals(request.getContextPath()+"/index.jsp")  ) ) {
            response.sendRedirect(request.getContextPath()+"/dashboard");
        } else if (loggedIn || loginRequest) {
            chain.doFilter(request, response);
        } else {
            response.sendRedirect(loginURI+"?auth=false");
        }
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
