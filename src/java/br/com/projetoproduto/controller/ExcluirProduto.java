package br.com.projetoproduto.controller;

import br.com.projetoproduto.dao.GenericDAO;
import br.com.projetoproduto.dao.LivroDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ExcluirProduto", urlPatterns = {"/ExcluirProduto"})
public class ExcluirProduto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            int idProduto = Integer.parseInt(request.getParameter("idProduto"));
            String mensagem = null;
            try{
                GenericDAO dao = new LivroDAOImpl();
                if(dao.excluir(idProduto)){
                    mensagem = "Produto excluído com sucesso!";
                }else{
                    mensagem = "Problemas ao excluir produto!";
                }
                request.setAttribute("mensagem", mensagem);
                request.getRequestDispatcher("ListarProduto").forward(request, response);
            }catch(Exception e){
                System.out.println("Problemas no Servlet ao excluir o produto! "
                        + "Erro: " + e.getMessage());
                e.printStackTrace();
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
