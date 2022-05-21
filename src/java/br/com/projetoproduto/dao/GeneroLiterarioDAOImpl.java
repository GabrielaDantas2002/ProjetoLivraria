package br.com.projetoproduto.dao;

import br.com.projetoproduto.model.GeneroLiterario;
import br.com.projetoproduto.model.Produto;
import br.com.projetoproduto.util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GeneroLiterarioDAOImpl implements GenericDAO {
    
    private Connection conn;

    public GeneroLiterarioDAOImpl() throws Exception {
        try {
            this.conn = (Connection) ConnectionFactory.getConnection();
            System.out.println("Conectado com sucesso!");
        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
    }

    @Override
    public Boolean cadastrar(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Object> listar() {
        List<Object> generosliterarios = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        String sql = "select * from generoliterario order by nomegenero;";
        
        try {
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();

            while (rs.next()) {
                GeneroLiterario generoliterario = new GeneroLiterario();
                generoliterario.setIdGenero(rs.getInt("idgenero"));
                generoliterario.setNomeGenero(rs.getString("nomegenero"));
                generosliterarios.add(generoliterario);
            }
        } catch (SQLException ex) {
            System.out.println("Problemas ao listar gênero! Erro:" + ex.getMessage());
            ex.printStackTrace();

        } finally {
            try {
                ConnectionFactory.closeConnection((java.sql.Connection) conn, stmt, rs);
            } catch (Exception e) {
                System.out.println("Problemas ao fechar a conexão! Erro" + e.getMessage());
                e.printStackTrace();
            }
        }
        return generosliterarios;
    }

    @Override
    public Boolean excluir(int idObject) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object carregar(int idObject) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean alterar(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
