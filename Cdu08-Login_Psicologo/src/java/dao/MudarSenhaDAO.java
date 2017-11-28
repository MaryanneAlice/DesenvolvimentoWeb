/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static entidade.Cryptography.Cryptography;
import entidade.MudarSenha;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import service.ConectarBDD;
import static service.ConectarBDD.closeConnection;
import static service.ConectarBDD.getConnection;

/**
 *
 * @author marya
 */
public class MudarSenhaDAO {

    public MudarSenhaDAO() { }
    
    public static boolean mudarSenha(MudarSenha ms) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {            
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;        
    try
    {   
        ps = connection.prepareStatement(
        "update cad_psicologo set senha = '" + Cryptography(ms.getSenha()) + "' where crp = '" + ms.getCrp() + "' ;" );
        ps.execute();
        r = true; 
    } catch (SQLException e) {
        System.out.println("error: " + e);
    } finally {
        closeConnection(connection, null, null, null);
    }
        return r;
    }
    
}
