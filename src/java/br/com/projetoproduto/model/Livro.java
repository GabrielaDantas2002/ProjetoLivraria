package br.com.projetoproduto.model;

public class Livro extends Produto{
    
    private Integer idLivro;
    private String codigoIsbn;
    private String nomeAutor;
    private GeneroLiterario generoLiterario;

    public Livro() {
    }

    public Livro(Integer idLivro, String codigoIsbn, String nomeAutor, GeneroLiterario GeneroLiterario) {
        this.idLivro = idLivro;
        this.codigoIsbn = codigoIsbn;
        this.nomeAutor = nomeAutor;
        this.generoLiterario = GeneroLiterario;
    }

    public Integer getIdLivro() {
        return idLivro;
    }

    public void setIdLivro(Integer idLivro) {
        this.idLivro = idLivro;
    }

    public String getCodigoIsbn() {
        return codigoIsbn;
    }

    public void setCodigoIsbn(String codigoIsbn) {
        this.codigoIsbn = codigoIsbn;
    }

    public String getNomeAutor() {
        return nomeAutor;
    }

    public void setNomeAutor(String nomeAutor) {
        this.nomeAutor = nomeAutor;
    }

    public GeneroLiterario getGeneroLiterario() {
        return generoLiterario;
    }

    public void setGeneroLiterario(GeneroLiterario generoLiterario) {
        this.generoLiterario = generoLiterario;
    }

    
}