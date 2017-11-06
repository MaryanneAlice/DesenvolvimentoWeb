/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Psicologo;
import entidades.TipoAtendimento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
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
    
    private static Connection connection;

    public PsicologoDAO() {
        connection = ConexaoBDD.getConnection();
    }
    
    public static boolean inserir(Psicologo psic, TipoAtendimento tp) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement ps, p;
        try {
            ps = connection.prepareStatement ("INSERT INTO cad_psicologo (crp, nome, rua, numero, bairro, cidade, "
                    + "telefoneComercial, telefoneOutro, email, login, senha) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);");
            ps.setString(1, psic.getCrp());
            ps.setString(2, psic.getNome());
            ps.setString(4, psic.getRua());
            ps.setString(5, psic.getNumero());
            ps.setString(6, psic.getBairro());
            ps.setString(7, psic.getCidade());
            ps.setString(8, psic.getContato());
            ps.setString(9, psic.getContatoOp());
            ps.setString(10, psic.getEMail());
            ps.setString(11, psic.getLogin());
            ps.setString(12, psic.getSenha());
            
            p = connection.prepareStatement("INSERT INTO tipoatendimento (crp, privado, amil, unimedNatal, hapvida)"
                    + " VALUES (?, ?, ?, ?, ?);");
            p.setString(1, tp.getCrp());
            p.setBoolean(2, tp.isPrivado());
            p.setBoolean(3, tp.isAmil());
            p.setBoolean(4, tp.isUnimedNatal());
            p.setBoolean(5, tp.isHapvida());
            
            ps.execute();
            p.execute();
            r = true;
        } catch (SQLException e) {
        System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
}