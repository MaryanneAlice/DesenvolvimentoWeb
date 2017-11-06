/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidade;

/**
 *
 * @author marya
 */
public class MudarSenha {
    private String senha, crp;
    
    public MudarSenha() {
    }

    public MudarSenha(String senha, String crp) {
        this.senha = senha;
        this.crp = crp;
    }
    
    public String getCrp() {
        return crp;
    }

    public void setCrp(String crp) {
        this.crp = crp;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
}