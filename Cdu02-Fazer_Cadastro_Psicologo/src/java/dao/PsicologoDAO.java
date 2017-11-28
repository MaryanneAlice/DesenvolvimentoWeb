/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.Connection;
import entidades.Psicologo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import service.ConexaoBDD;
import static service.ConexaoBDD.closeConnection;
import static service.ConexaoBDD.getConnection;

/**
 *
 * @author marya
 */
public class PsicologoDAO {
    
    private static Connection connection = ConexaoBDD.getConnection();
 
    
    public static boolean inserirPS(Psicologo psic) throws SQLException {
        boolean r = false;
        getConnection();
        TipoAtendimentoDAO TAdao = new TipoAtendimentoDAO();
        int tpID = TAdao.tipoAtenID();
        PreparedStatement ps;
        try {
             ps = connection.prepareStatement ("INSERT INTO cad_psicologo (crp, nome, rua, numero, bairro, cidade, "
                    + "telefoneComercial, telefoneOutro, email, login, senha, forma_atendimento) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);" );

            ps.setString(1, psic.getCrp());
            ps.setString(2, psic.getNome());
            ps.setString(3, psic.getRua());
            ps.setString(4, psic.getNumero());
            ps.setString(5, psic.getBairro());
            ps.setString(6, psic.getCidade());
            ps.setString(7, psic.getContato());
            ps.setString(8, psic.getContatoOp());
            ps.setString(9, psic.getEMail());
            ps.setString(10, psic.getLogin());
            ps.setString(11, psic.getSenha());
            ps.setInt(12, tpID);
            ps.execute(); // filho
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
}