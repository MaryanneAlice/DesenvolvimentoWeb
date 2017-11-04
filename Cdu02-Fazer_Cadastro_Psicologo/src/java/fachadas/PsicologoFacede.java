/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.PsicologoDAO;
import entidades.Psicologo;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class PsicologoFacede {
    
    private static PsicologoDAO dao = new PsicologoDAO();

    public static boolean inserir(Psicologo psic) throws SQLException {
        return dao.inserir(psic);
    }
    
}
