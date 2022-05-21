package br.com.projetoproduto.controller;

import br.com.projetoproduto.dao.GenericDAO;
import br.com.projetoproduto.dao.LivroDAOImpl;
import br.com.projetoproduto.model.GeneroLiterario;
import br.com.projetoproduto.model.Livro;
import br.com.projetoproduto.model.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CadastrarProduto", urlPatterns = {"/CadastrarProduto"})
public class CadastrarProduto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String descProduto = request.getParameter("descProduto");
            Double valorProduto = Double.parseDouble(request.getParameter("valorProduto"));
            String codigoIsbn = request.getParameter("codigoIsbn");
            String nomeAutor = request.getParameter("nomeAutor");
            Integer idGenero = Integer.parseInt(request.getParameter("idGenero"));
            
            String mensagem = null;

            Livro livro = new Livro();
            livro.setDescProduto(descProduto);
            livro.setValorProduto(valorProduto);
            livro.setCodigoIsbn(codigoIsbn);
            livro.setNomeAutor(nomeAutor);
            livro.setGeneroLiterario(new GeneroLiterario(idGenero));

            try {
                GenericDAO dao = new LivroDAOImpl();
                if (dao.cadastrar(livro)) {
                    mensagem = "Livro cadastrado com sucesso!";
                } else {
                    mensagem = "Problemas ao cadastrar Livro. "
                            + "Verifique os dados informados e tente novamente!";
                }
                request.setAttribute("mensagem", mensagem);
                request.getRequestDispatcher("cadastrarproduto.jsp").forward(request, response);
            } catch (Exception ex) {
                System.out.println("Problemas no Servlet ao cadastrar Livro! Erro: "
                        + ex.getMessage());
                ex.printStackTrace();
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
