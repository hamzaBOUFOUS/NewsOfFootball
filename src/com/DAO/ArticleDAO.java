package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DataBase.SingletonDB;
import com.model.Article;

public class ArticleDAO {
    private Connection connection = null;
	public ArticleDAO() {
        this.connection = SingletonDB.getConnection();
	}
	
	public void editEtatOfArticle(long id, String etat) {
		PreparedStatement ps;
	    try {
	    	ps = this.connection.prepareStatement("update Article set etat=? where idArticle=?");
			ps.setString(1, etat);
			ps.setLong(2, id);
			ps.executeUpdate();
			ps.close();
	    } catch (SQLException ex) {
	        System.out.println("erreur ! ");
	    }
	}
	
    public void addObjet(Article obj) {
        try {
            PreparedStatement ps = this.connection.prepareStatement("insert into Article values(null,?,?,?,?,?,?,?,'false')");
            ps.setString(1, obj.getTitre());
            ps.setString(2, obj.getImage());
            ps.setString(3, obj.getContenu());
            ps.setString(4, obj.getTag());
            ps.setDate(5, obj.getDate());
            ps.setLong(6, obj.getIdAgent());
            ps.setLong(7, obj.getIdCat());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    };

    public ArrayList<Article> findAll() {
        ArrayList<Article> listArticle = new ArrayList<Article>();

        try {
            ResultSet result = this.connection.createStatement(
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY).executeQuery("SELECT * FROM Article");
            while (result.next()) {
            	Article article = new Article();
            	article.setIdArticle(result.getLong("idArticle"));
            	article.setTitre(result.getString("titre"));
            	article.setImage(result.getString("image"));
            	article.setContenu(result.getString("contenu"));
            	article.setTag(result.getString("tag"));
            	article.setDate(result.getDate("date"));
            	article.setIdAgent(result.getLong("idAgent"));
            	article.setIdCat(result.getLong("idCat"));
            	article.setEtat(result.getString("etat"));
            	listArticle.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listArticle;
    }
    
    public long getLastId() {
    	long id=0;

       	ResultSet result;
		try {
			result = this.connection.createStatement(
			ResultSet.TYPE_SCROLL_INSENSITIVE,
			ResultSet.CONCUR_READ_ONLY)
					.executeQuery("SELECT MAX(idArticle) as maxid FROM Article");
	       	if(result.first()) {
	       		id = result.getLong("maxid");
	       	}  
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return id;
    }
    
    public Article findById(long id) {
    	Article article = null;
	    try {
	       	ResultSet result = this.connection.createStatement(
	    	ResultSet.TYPE_SCROLL_INSENSITIVE,
	    	ResultSet.CONCUR_READ_ONLY)
	       			.executeQuery("SELECT * FROM Article WHERE idArticle= " + id);
	       	if(result.first()) {
	       		article = new Article();
            	article.setIdArticle(result.getLong("idArticle"));
            	article.setTitre(result.getString("titre"));
            	article.setImage(result.getString("image"));
            	article.setContenu(result.getString("contenu"));
            	article.setTag(result.getString("tag"));
            	article.setDate(result.getDate("date"));
            	article.setIdAgent(result.getLong("idAgent"));
            	article.setIdCat(result.getLong("idCat"));
            	article.setEtat(result.getString("etat"));
	       	}        
	    } catch (SQLException e) {
	       e.printStackTrace();
	    }
    	return article;
    	
    }

    public ArrayList<Article> findAllBy(String query) {
        ArrayList<Article> listArticle = new ArrayList<Article>();

        try {
            ResultSet result = this.connection.createStatement(
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY).executeQuery(query);
            while (result.next()) {
            	Article article = new Article();
            	article.setIdArticle(result.getLong("idArticle"));
            	article.setTitre(result.getString("titre"));
            	article.setImage(result.getString("image"));
            	article.setContenu(result.getString("contenu"));
            	article.setTag(result.getString("tag"));
            	article.setDate(result.getDate("date"));
            	article.setIdAgent(result.getLong("idAgent"));
            	article.setIdCat(result.getLong("idCat"));
            	article.setEtat(result.getString("etat"));
            	listArticle.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listArticle;
    }
    

}
