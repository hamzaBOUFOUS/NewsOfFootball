package com.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.DataBase.SingletonDB;
import com.model.Agent;

public class AgentDAO {
    private Connection connection = null;
	public AgentDAO() {
        this.connection = SingletonDB.getConnection();
	}
	
    public void addObjet(Agent obj) {
        try {
            PreparedStatement ps = this.connection.prepareStatement("insert into agent values(null,?,?,?,?,?)");
            ps.setString(1, obj.getNom());
            ps.setString(2, obj.getPrenom());
            ps.setString(3, obj.getRole());
            ps.setString(4, obj.getLogin());
            ps.setString(5, obj.getPassword());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    };

    public ArrayList<Agent> findAll() {
        ArrayList<Agent> listAgent = new ArrayList<Agent>();

        try {
            ResultSet result = this.connection.createStatement(
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY).executeQuery("SELECT * FROM agent");
            while (result.next()) {
            	Agent agent = new Agent();
            	agent.setIdAgent(result.getLong("idagent"));
            	agent.setNom(result.getString("nom"));
            	agent.setPrenom(result.getString("prenom"));
            	agent.setRole(result.getString("fonction"));
            	agent.setLogin(result.getString("login"));
            	agent.setPassword(result.getString("password"));
                listAgent.add(agent);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listAgent;
    }
    
    public Agent loginTest(String email, String password) {
    	Agent agent = null;
	    try {
	       	ResultSet result = this.connection.createStatement(
	    	ResultSet.TYPE_SCROLL_INSENSITIVE,
	    	ResultSet.CONCUR_READ_ONLY)
	       			.executeQuery("SELECT * FROM agent WHERE login like '" + email +"' and password like '" + password +"'");
	       	if(result.first()) {
	       		agent = new Agent();
	       		agent.setIdAgent(result.getLong("idagent"));
	       	}        
	    } catch (SQLException e) {
	       e.printStackTrace();
	    }
    	return agent;
    }
    
    public Agent findById(long id) {
    	Agent agent = null;
	    try {
	       	ResultSet result = this.connection.createStatement(
	    	ResultSet.TYPE_SCROLL_INSENSITIVE,
	    	ResultSet.CONCUR_READ_ONLY)
	       			.executeQuery("SELECT * FROM agent WHERE idagent= " + id);
	       	if(result.first()) {
	       		agent = new Agent();
            	agent.setIdAgent(result.getLong("idagent"));
            	agent.setNom(result.getString("nom"));
            	agent.setPrenom(result.getString("prenom"));
            	agent.setLogin(result.getString("login"));
	       	}        
	    } catch (SQLException e) {
	       e.printStackTrace();
	    }
    	return agent;
    	
    }
}
