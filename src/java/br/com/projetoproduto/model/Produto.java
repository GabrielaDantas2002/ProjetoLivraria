package br.com.projetoproduto.model;

public class Produto {
    
    private Integer idProduto;
    private String descProduto;
    private Double valorProduto;

    public Produto() {
    }

    public Produto(Integer idProduto, String descProduto, Double valorProduto) {
        this.idProduto = idProduto;
        this.descProduto = descProduto;
        this.valorProduto = valorProduto;
    }

    public Integer getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(Integer idProduto) {
        this.idProduto = idProduto;
    }

    public String getDescProduto() {
        return descProduto;
    }

    public void setDescProduto(String descProduto) {
        this.descProduto = descProduto;
    }

    public Double getValorProduto() {
        return valorProduto;
    }

    public void setValorProduto(Double valorProduto) {
        this.valorProduto = valorProduto;
    }

   
    }
