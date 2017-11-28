/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidade.MudarSenha;
import entidade.Usuario;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 *
 * @author Maryanne Alice
 */
public class Main {
    public static void main(String[] args) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        /*MudarSenha ms = new MudarSenha();
        ms.setCrp("8923892");
        ms.setSenha("123456");
        System.out.println("CRP:: " + ms.getCrp());
        System.out.println("Senha:: " + ms.getSenha());
        MudarSenhaDAO.mudarSenha(ms);
        System.out.println(MudarSenhaDAO.mudarSenha(ms));*/
        Usuario u = new Usuario();
        u.setLogin("userpsic");
        u.setSenha("123456");
        UsuarioDAO.verificacaoLogin(u);
        System.out.println(UsuarioDAO.verificacaoLogin(u));
    }
}
