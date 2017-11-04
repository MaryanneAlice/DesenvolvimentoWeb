/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Psicologo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import service.ConexaoBDD;
import static service.ConexaoBDD.closeConnection;
import static service.ConexaoBDD.getConnection;

/**
 *
 * @author marya
 */
public class PsicologoDAO {
    
   private com.mysql.jdbc.Connection connection;

    public PsicologoDAO() {
        connection = ConexaoBDD.getConnection();
    }
    
    public boolean inserir(Psicologo psic) throws SQLException {
        getConnection();
        boolean r = false;
        PreparedStatement ps;
         ps = connection.prepareStatement ("INSERT INTO cad_psicologo(crp, nome, forma_atendimento, rua,"
                 + " numero, bairro, cidade, telefoneComercial, telefoneOutro, email, login, senha) "
                 + "values(?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, psic.getCrp());
            ps.setString(2, psic.getNome());
            ps.setString(3, psic.getForma_atendimento());
            ps.setString(4, psic.getRua());
            ps.setString(5, psic.getNumero());
            ps.setString(6, psic.getBairro());
            ps.setString(7, psic.getCidade());
            ps.setString(8, psic.getContato());
            ps.setString(9, psic.getContatoOp());
            ps.setString(10, psic.getEMail());
            ps.setString(11, psic.getLogin());
            ps.setString(12, psic.getSenha());

            ps.execute();
            r = true;
            try {
               closeConnection();
            } catch (Exception ex) {
               Logger.getLogger(PsicologoDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        return r;
    }
}