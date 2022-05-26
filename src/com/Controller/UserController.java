package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.ArticleDAO;
import com.DAO.CategorieDAO;

/**
 * Servlet implementation class UserController
 */

public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArticleDAO articleDAO;
	private CategorieDAO categorieDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        this.articleDAO = new ArticleDAO();
        this.categorieDAO = new CategorieDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		String formUrl="Home.jsp";
		String categorieList = request.getContextPath() + "/categorie-list";
		String categorieDetails = request.getContextPath() + "/categorie-details";
		
		
		request.setAttribute("cats", this.categorieDAO.findAll());
		request.setAttribute("size", this.categorieDAO.findAll().size());
		
		boolean listRequest = request.getRequestURI().contains(categorieList);
		boolean detailsRequest = request.getRequestURI().contains(categorieDetails);
		
		if(listRequest) {
			long idcat = Long.parseLong(request.getParameter("cat"));
			request.setAttribute("NewsByCat", this.articleDAO.findAllBy("SELECT * FROM Article where article.idCat =" +idcat+" and article.etat ='true' ORDER BY date"));
			request.setAttribute("idCat", idcat);
			formUrl="categoryUser.jsp";
		}else if(detailsRequest) {
			long idart = Long.parseLong(request.getParameter("art"));
			request.setAttribute("lastNewsTop", this.articleDAO.findAllBy("SELECT * FROM Article where article.etat ='true'  ORDER BY date LIMIT 3"));
			request.setAttribute("article", this.articleDAO.findById(idart));
			formUrl="details.jsp";
			
		}else {
			request.setAttribute("lastNews", this.articleDAO.findAllBy("SELECT * FROM Article where article.etat ='true' ORDER BY date LIMIT 6"));
			//request.setAttribute("BestNews", this.articleDAO.findAllBy("SELECT * from article, (SELECT idCat, MAX(nbrArt) FROM (SELECT idCat,COUNT(*) as nbrArt FROM Article GROUP BY idCat) as test) as cate where article.idCat = cate.idCat"));
			request.setAttribute("lastNewsTop", this.articleDAO.findAllBy("SELECT * FROM Article where article.etat ='true' ORDER BY date LIMIT 4"));
			request.setAttribute("randomNews", this.articleDAO.findAllBy("SELECT * FROM article where article.etat ='true' ORDER BY RAND() LIMIT 5"));
		}
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
