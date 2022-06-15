<%@page import="br.com.projetoproduto.model.Livro" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="nav.jsp"%>

<!-- Custom styles for this page -->
<link href="assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<h1 align="center"> Livros Cadastrados </h1>
<hr>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Busca de livros</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>ISBN</th>
                            <th>Genêro Literário</th>
                            <th>Valor</th>
                        </tr>
                    </thead>                    
                    <tbody>
                        <% List<Livro> livros = (List<Livro>)
                                request.getAttribute("livros");
                                for (Livro livro : livros) {
                        %>
                        <tr>


                            <td align="center">
                                <%=livro.getIdProduto()%>
                            </td>
                            <td align="center">
                                <%=livro.getDescProduto()%>
                            </td>
                            <td align="center">
                                <%=livro.getNomeAutor()%>
                            </td>
                            <td align="center">
                                <%=livro.getCodigoIsbn()%>
                            </td>
                            <td align="center">
                                <%=livro.getGeneroLiterario().getNomeGenero()%>
                            </td>
                            <td align="center">
                                <%=livro.getValorProduto()%>
                            </td>
                            <td align="center">
                                <a href="CarregarProduto?idProduto=<%=livro.getIdProduto()%>">
                                <i class="fas fa-edit"></i>
                                </a>
                            </td>
                            <td align="center">
                                <a href="DeletarProduto?idProduto=<%=livro.getIdProduto()%>">
                                <i class="fas fa-trash"></i>
                                </a>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- pagination -->

        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="ListarProduto" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="ListarProduto">1</a></li>
                <li class="page-item"><a class="page-link" href="ListarProduto">2</a></li>
                <li class="page-item"><a class="page-link" href="ListarProduto">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="ListarProduto" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
                    <button class="btn btn-primary col-md-1" value="voltar"><a href="home.jsp">Voltar</a></button>
            </ul>
        </nav>

        <!-- end of pagination -->    
    </div>
</div>
<!-- /.container-fluid -->




<%@include file="footer.jsp" %>

<%@include file="logoutmodal.jsp" %>

<!-- Bootstrap core JavaScript-->
<script src="./assets/vendor/jquery/jquery.min.js"></script>
<script src="./assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="./assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="./assets/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="./assets/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="./assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="./assets/js/demo/datatables-demo.js"></script>

</body>

</html>