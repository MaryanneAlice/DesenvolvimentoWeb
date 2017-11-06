/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author marya
 */
public class TipoAtendimento {
    
    private String crp;
    private boolean privado, amil, unimedNatal, hapvida;

    public TipoAtendimento() {
    }

    public String getCrp() {
        return crp;
    }

    public void setCrp(String crp) {
        this.crp = crp;
    }

    public boolean isPrivado() {
        return privado;
    }

    public void setPrivado(boolean privado) {
        this.privado = privado;
    }

    public boolean isAmil() {
        return amil;
    }

    public void setAmil(boolean amil) {
        this.amil = amil;
    }

    public boolean isUnimedNatal() {
        return unimedNatal;
    }

    public void setUnimedNatal(boolean unimedNatal) {
        this.unimedNatal = unimedNatal;
    }

    public boolean isHapvida() {
        return hapvida;
    }

    public void setHapvida(boolean hapvida) {
        this.hapvida = hapvida;
    }

    
    
}
