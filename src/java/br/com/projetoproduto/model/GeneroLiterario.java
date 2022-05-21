package br.com.projetoproduto.model;

public class GeneroLiterario {
    
    private Integer idGenero;
    private String nomeGenero;

    public GeneroLiterario() {
    }

    public GeneroLiterario(Integer idGenero, String nomeGenero) {
        this.idGenero = idGenero;
        this.nomeGenero = nomeGenero;
    }

    public GeneroLiterario(Integer idGenero) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer getIdGenero() {
        return idGenero;
    }

    public void setIdGenero(Integer idGenero) {
        this.idGenero = idGenero;
    }

    public String getNomeGenero() {
        return nomeGenero;
    }

    public void setNomeGenero(String nomeGenero) {
        this.nomeGenero = nomeGenero;
    }
    
    
}
