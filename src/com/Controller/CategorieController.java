package com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.DAO.CategorieDAO;
import com.model.Categorie;

/**
 * Servlet implementation class CategorieController
 */
public class CategorieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategorieDAO categorieDAO;
	private ArrayList<Categorie> categories;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategorieController() {
        super();
        this.categorieDAO = new CategorieDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String formUrl="category.jsp";
		String aff = request.getParameter("aff") != null?request.getParameter("aff"):"true";
		if(!aff.equals("true")) {
			String nameCategorie = request.getParameter("categorie");
			String description = request.getParameter("description");
			Categorie categorie = new Categorie();
			categorie.setDescription(description);
			categorie.setNom(nameCategorie);
			this.categorieDAO.addObjet(categorie);
			request.setAttribute("add", "true");
		}
		
		this.categories = new ArrayList<Categorie>();
		this.categories = this.categorieDAO.findAll();
		request.setAttribute("listCats", this.categories );
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(formUrl);
		dispatcher.forward(request, response);
		//request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
