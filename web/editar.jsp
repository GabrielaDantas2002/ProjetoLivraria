<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="nav.jsp"%>
<!-- Begin Page Content -->
<div class="container">


    <div class="text-center">
        <h1 class="h4 text-gray-900 mb-4 ali">Editar Títulos</h1>
    </div>
    <form class="needs-validation" name="editarlivro" action="EditarLivro" method="POST" novalidate>
  <div class="form-row">
      <div class="col-md-6 mb-3">
      <label for="idProduto">ID Produto</label>
      <input type="text" class="form-control" name="idProduto" value="${livro.idProduto}" readonly="true">
    </div>
    <div class="col-md-6 mb-3">
      <label for="idLivro">ID Título</label>
      <input type="text" class="form-control" name="idLivro" value="${livro.idLivro}" readonly="true">
    </div>
    <div class="col-md-6 mb-3">
      <label for="descProduto">Nome do Título</label>
      <input type="text" class="form-control" name="descProduto" value="${livro.descProduto}" required>
      <div class="valid-feedback"></div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="nomeAutor">Nome do Autor</label>
      <input type="text" class="form-control" name="nomeAutor" value="${livro.nomeAutor}" required>
      <div class="valid-feedback"></div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="codigoIsbn">Código ISBN</label>
      <input type="text" class="form-control" name="codigoIsbn" value="${livro.codigoIsbn}" required>
      <div class="invalid-feedback">
        Por favor, insira um código válido.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="generoLiterario">Gênero Literário</label>
      <select class="custom-select" name="generoLiterario" required>
         <option selected value="${livro.generoLiterario.idGenero}">${livro.generoLiterario.nomeGenero}</option>
        <c:forEach var="generoliterario" items="${generosliterarios}">
        <option value="${generoliterario.idGenero}">${generoliterario.nomeGenero}</option>
        </c:forEach>
      </select>
      <div class="invalid-feedback">
        Por favor, selcione um tipo de gênero literário.
      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="valorProduto">Valor em R$</label>
      <input type="text" class="form-control" name="valorProduto" value="${livro.valorProduto}" required>
      <div class="invalid-feedback">
        Por favor, insira um valor válido.
      </div>
    </div>
  </div>
 
  <button class="btn btn-primary col-md-1" value="voltar"><a href="ListarProduto">Voltar</a></button>
  <button class="btn btn-primary col-md-1" type="submit">Salvar</button>

  </div>
</form>

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
    <!-- End of Main Content -->
    <%@include file="footer.jsp"%>

    <%@include file="logoutmodal.jsp" %>

    <%@include file="scripts.jsp" %>
</body>

</html>