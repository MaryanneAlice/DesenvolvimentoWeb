/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.PsicologoDAO;
import entidades.Psicologo;
import entidades.TipoAtendimento;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class PsicologoFacede {
    
    public static boolean inserir(Psicologo psic, TipoAtendimento tp) throws SQLException {
        return PsicologoDAO.inserir(psic, tp);
    }
    
}
