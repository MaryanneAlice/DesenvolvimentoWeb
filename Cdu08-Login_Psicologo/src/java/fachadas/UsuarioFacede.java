/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.UsuarioDAO;
import entidade.Usuario;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class UsuarioFacede {
    
    UsuarioDAO dao = new UsuarioDAO();
    
    public boolean verificar(Usuario user) throws SQLException {
        return dao.verificacaoLogin(user);
    }
    
}
