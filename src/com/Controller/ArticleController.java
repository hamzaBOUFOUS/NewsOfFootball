package com.Controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.DAO.AgentDAO;
import com.DAO.ArticleDAO;
import com.DAO.CategorieDAO;
import com.model.Article;

/**
 * Servlet implementation class ArticleController
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 200,  maxRequestSize = 1024 * 1024 * 5 * 5)
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String UPLOAD_DIR = "/uploads/";
	private ArticleDAO articleDAO;
	private CategorieDAO categorieDAO;
	private AgentDAO agentDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleController() {
        super();
        this.agentDAO = new AgentDAO();
        this.categorieDAO = new CategorieDAO();
        this.articleDAO = new ArticleDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String formUrl="";
        boolean listRequest = request.getRequestURI().equals("/ProjetFootNewsUser/article-list");
        if(listRequest) {
        	formUrl = "table.jsp";
			request.setAttribute("listArticle", this.articleDAO.findAll());
			request.setAttribute("listArticle1", this.articleDAO.findAll());
        } else if(request.getRequestURI().equals("/ProjetFootNewsUser/editArticle")) {
        	formUrl = "table.jsp";
			String etat = request.getParameter("etat");
			long id = Long.parseLong(request.getParameter("id"));
			this.articleDAO.editEtatOfArticle(id, etat);
			request.setAttribute("listArticle", this.articleDAO.findAll());
			request.setAttribute("listArticle1", this.articleDAO.findAll());
        
		}else {
    		String add = request.getParameter("add") != null?request.getParameter("add"):"false";
    		if(add.equals("true")) {
    			Part filePart = request.getPart("image");
    			String titre = request.getParameter("titre");
    			String contenu = request.getParameter("contenu");
				Date date = new Date(Calendar.getInstance().getTime().getTime());
    			String tag = request.getParameter("tag");
    			long agent = Long.parseLong(request.getParameter("agent"));
    			long categorie = Long.parseLong(request.getParameter("categorie"));
    			//---------------------------------
    		    String fileName = (this.articleDAO.getLastId()+1) +
    		    		filePart
    		    		.getSubmittedFileName()
    		    		.substring(filePart.getSubmittedFileName().lastIndexOf("."), filePart.getSubmittedFileName().length());
    		    String absoluteFilePath = getServletContext()
    		    		.getRealPath(UPLOAD_DIR)
    		    		.substring(0,
    		    				getServletContext()
    		    				.getRealPath(UPLOAD_DIR)
    		    				.indexOf(".metadata", 1)-1)
    		    		+"/ProjetFootNewsAdmin/WebContent"
    		    				+UPLOAD_DIR;
    		    //------------------getServletContext().getRealPath(UPLOAD_DIR);
    		    
    		    /*FileItem item = (FileItem)new File(request.getPart("image").getName());
    	        String filePath = absoluteFilePath + File.separator + fileName;
    	        File storeFile = new File(filePath);
    	        System.out.println(filePath+" kkkkkkkkkkkkk------------");
    	        try {
					item. write(storeFile);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
    	        
    		    filePart.write(absoluteFilePath +"/"+ fileName);
    		    //--------------Test-------------------
    		    resizeFile((absoluteFilePath +"/"+ fileName),absoluteFilePath, fileName);
    		    System.out.println("Nice ------------------");
    			//---------------------------------
    			Article article = new Article();
            	article.setTitre(titre);
            	article.setImage(fileName);
            	article.setContenu(contenu);
            	article.setTag(tag);
            	article.setDate(date);
            	article.setIdAgent(agent);
            	article.setIdCat(categorie);
    		    
            	this.articleDAO.addObjet(article);
    			request.setAttribute("add", "true");
    		    
    		}
    		request.setAttribute("listAgent", this.agentDAO.findAll() );
    		request.setAttribute("listCat", this.categorieDAO.findAll() );
        	formUrl = "addmateriel.jsp";
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
	
	public static void resizeFile(String imagePathToRead,
            String imagePathToWrite, String nameFile ) throws IOException {
		
		HashMap<String, String> uploads = new HashMap<String, String>();
		uploads.put("120", "100");
		uploads.put("240", "160");
		uploads.put("263", "170");
		uploads.put("360", "335");
		uploads.put("750", "400");

		File fileToRead = new File(imagePathToRead);
		BufferedImage bufferedImageInput = ImageIO.read(fileToRead);
		
		for(Map.Entry<String, String> m : uploads.entrySet()){
			int resizeWidth = Integer.parseInt(m.getKey().toString()),
					resizeHeight = Integer.parseInt(m.getValue().toString());
			
			BufferedImage bufferedImageOutput = new BufferedImage(resizeWidth, resizeHeight, bufferedImageInput.getType());
			
			Graphics2D g2d = bufferedImageOutput.createGraphics();
			g2d.drawImage(bufferedImageInput, 0, 0, resizeWidth,resizeHeight, null);
			g2d.dispose();
			String imagePathToWrite1 =imagePathToWrite+ "/" + resizeWidth+"x"+resizeHeight+"/"+nameFile;
			String formatName = imagePathToWrite1.substring(imagePathToWrite1.lastIndexOf(".") + 1);
			File destFile = new File(imagePathToWrite1);
			destFile.createNewFile();
			ImageIO.write(bufferedImageOutput, formatName, destFile);	
		}
		
	}
	
}
