package com.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

import com.DataBase.SingletonDB;
import com.model.Categorie;

public class CategorieDAO {
    private Connection connection = null;

    public CategorieDAO() {
        this.connection = SingletonDB.getConnection();
    }

    public void addObjet(Categorie obj) {
        try {
            PreparedStatement ps = this.connection.prepareStatement("insert into categorie values(null,?,?)");
            ps.setString(1, obj.getNom());
            ps.setString(2, obj.getDescription());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    };

    public ArrayList<Categorie> findAll() {
        ArrayList<Categorie> listCat = new ArrayList<Categorie>();

        try {
            ResultSet result = this.connection.createStatement(
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY).executeQuery("SELECT * FROM categorie");
            while (result.next()) {
                Categorie categorie = new Categorie();
                categorie.setIdCat(result.getLong("idcat"));
                categorie.setNom(result.getString("label"));
                categorie.setDescription(result.getString("description"));
                listCat.add(categorie);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listCat;
    }
    


    public HashMap<String, Long> findAllGroupById() {
        HashMap<String, Long> map = new HashMap<String, Long>();

        try {
            ResultSet result = this.connection.createStatement(
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY)
            		.executeQuery("SELECT categorie.idcat as id, categorie.label as label, count(article.idArticle) as nbrArticle FROM categorie, article where categorie.idcat = article.idCat GROUP by categorie.idcat");
            while (result.next()) {
            	map.put(result.getString("label"), result.getLong("nbrArticle"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return map;
    }

}
