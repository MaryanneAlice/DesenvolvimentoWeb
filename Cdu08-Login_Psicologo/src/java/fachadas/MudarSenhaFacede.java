/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.MudarSenhaDAO;
import entidade.MudarSenha;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class MudarSenhaFacede {
            
    public boolean mudarSenha(MudarSenha ms) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return MudarSenhaDAO.mudarSenha(ms);
    }
    
}
