/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static entidade.Cryptography.Cryptography;
import entidade.Usuario;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import service.ConectarBDD;
import static service.ConectarBDD.closeConnection;
import static service.ConectarBDD.getConnection;

/**
 *
 * @author marya
 */
public class UsuarioDAO {

    public UsuarioDAO() { }
    
    public static boolean verificacaoLogin(Usuario user) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {       
          boolean r = false;
          Connection connection = getConnection();
          PreparedStatement ps = null;
          ResultSet rs = null;
            try
            {
                ps = connection.prepareStatement("select * from cad_psicologo where login = ? and senha = ?;");
                ps.setString(1, user.getLogin());
                ps.setString(2, Cryptography(user.getSenha()));
                rs = ps.executeQuery();
                if (rs.next()) {
                    r = true; 
                }
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConnection(connection, rs, ps, null);
            }
        return r;
    }
        
}