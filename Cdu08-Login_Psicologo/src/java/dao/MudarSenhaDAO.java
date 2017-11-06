/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidade.MudarSenha;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import service.ConectarBDD;
import static service.ConectarBDD.closeConnection;
import static service.ConectarBDD.getConnection;

/**
 *
 * @author marya
 */
public class MudarSenhaDAO {
    
    private static Connection connection;

    public MudarSenhaDAO() {
        connection = ConectarBDD.getConnection();
    }
    
    public static boolean mudarSenha(MudarSenha ms) throws SQLException {            
        boolean r = false;
        getConnection();
        PreparedStatement ps;
    try
    {
        ps = connection.prepareStatement(
        "update cad_psicologo set senha = '" + ms.getSenha() + "' where crp = '" + ms.getCrp() + "' ;" );
        ps.execute();
        r = true; 
    } catch (SQLException e) {
        System.out.println("error: " + e);
    } finally {
        closeConnection();
    }
        return r;
    }
    
}
