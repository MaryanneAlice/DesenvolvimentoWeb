/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidade.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import service.ConectarBDD;
import static service.ConectarBDD.closeConnection;
import static service.ConectarBDD.getConnection;

/**
 *
 * @author marya
 */
public class UsuarioDAO {
    
    private static Connection connection;

    public UsuarioDAO() {
        connection = ConectarBDD.getConnection();
    }
    
    public boolean verificacaoLogin(Usuario user) throws SQLException {       
            getConnection();
            
          boolean r = false;
          PreparedStatement ps;
          ResultSet rs;
            try
            {
                ps = connection.prepareStatement("select * from cad_psicologo where login = ? and senha = ?;");
                ps.setString(1, user.getLogin());
                ps.setString(2, user.getSenha());
                rs = ps.executeQuery();
                if (rs.next()) {
                    r = true; 
                }
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConnection();
            }
        return r;
    }
        
}