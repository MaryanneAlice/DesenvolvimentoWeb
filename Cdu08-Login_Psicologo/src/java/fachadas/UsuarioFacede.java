/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.UsuarioDAO;
import entidade.Usuario;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class UsuarioFacede {
    
    UsuarioDAO dao = new UsuarioDAO();
    
    public boolean verificar(Usuario user) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return dao.verificacaoLogin(user);
    }
    
}
