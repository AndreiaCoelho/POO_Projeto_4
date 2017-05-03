<%-- 
    Document   : fornecedor
    Created on : 02/05/2017, 23:08:32
    Author     : Ricky
--%>

<%@page import="com.fatecpg.usuarios.BancoFornecedor"%>
<%@page import="com.fatecpg.usuarios.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (BancoFornecedor.f == null) {
        Fornecedor f1 = new Fornecedor("1", "1", "1", "1", "1", "1");
        BancoFornecedor.f.put(f1.getCnpj(), f1);
    }
    if (request.getParameter("Deletar") != null) {
        String cnpj = request.getParameter("cnpj");
        Fornecedor.delete(cnpj);
    } else if (request.getParameter("Alterar") != null) {
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereco = request.getParameter("endereco");
        Fornecedor f = new Fornecedor(nome, razaoSocial, cnpj, email, fone, endereco);
        Fornecedor.update(cnpj, f);
    }%>
<%    if (request.getParameter("Enviar") != null) {
        String nome = request.getParameter("nome");

        String razaoSocial = request.getParameter("razao");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereco = request.getParameter("endereco");
        Fornecedor f = new Fornecedor(nome, razaoSocial, cnpj, email, fone, endereco);
        f.insert(f);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
    <center><h2 > Pagina de Fornecedores </h2></center><br><br>
    <button style="margin-left: 5%" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#Inserir">Inserir dados do fornecedor</button>
    <button style="margin-left: 5%" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#Delete">Deletar dados do fornecedor</button>
    <button style="margin-left: 5%" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#Inserir">Alterar dados do fornecedor</button><br><br>


    <table style="border-style: dotted;margin-left: 5%">
        <thead>
            <tr style="border-style: dotted">
                <th style="border-style: double">Nome &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">Razão Social &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">CNPJ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">Telefone &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">Endereço &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <% for (String key : BancoFornecedor.f.keySet()) { %>
            <tr>
                <% Fornecedor f = BancoFornecedor.f.get(key);%>
                <td style="border-style: double"><%= f.getNome()%></td>
                <td style="border-style: double"><%= f.getSocial()%></td>
                <td style="border-style: double"><%= f.getCnpj()%></td>
                <td style="border-style: double"><%= f.getEmail()%></td>
                <td style="border-style: double"><%= f.getTelefone()%></td>
                <td style="border-style: double"><%= f.getEndereco()%></td>
            </tr>
            <% }%>
        </tbody>
    </table>


    <div class="modal fade" id="Inserir" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Inserir dados do fornecedor</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div>
                            <label for="nome">Nome</label>
                            <input type="text" id="nomeFornecedor" name="nome" required><br>
                            <label for="razao">Razão Social</label>
                            <input type="text" id="razFornecedor" name="razao" required><br>
                            <label for="cnpj">Cnpj</label>
                            <input type="text" id="cnpjFornecedor" name="cnpj" required><br>
                            <label for="email">E-Mail</label>
                            <input type="text" id="emailCliente" name="email"required><br>
                            <label for="fone">Telefone</label>
                            <input type="text" id="telCliente" name="fone" required><br>
                            <label for="endereco">Endereço</label>
                            <input type="text" id="endereçoCliente" name="endereco" required><br><br><br>
                            <input type="submit" name="Enviar" value="Enviar" />                            
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Delete" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Deletar dados do fornecedor</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div>
                            <label for="cnpj">Cnpj</label>
                            <input type="text" id="cnpjFornecedor" name="cnpj" required><br><br><br>
                            <input type="submit" name="Deletar" value="Deletar" />                            
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="Alterar" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Alterar dados do fornecedor</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div>
                            <label for="nome">Nome</label>
                            <input type="text" id="nomeFornecedor" name="nome" required><br>
                            <label for="razao">Razão Social</label>
                            <input type="text" id="razFornecedor" name="razao" required><br>
                            <label for="cnpj">Cnpj</label>
                            <input type="text" id="cnpjFornecedor" name="cnpj" required><br>
                            <label for="email">E-Mail</label>
                            <input type="text" id="emailCliente" name="email"required><br>
                            <label for="fone">Telefone</label>
                            <input type="text" id="telCliente" name="fone" required><br>
                            <label for="endereco">Endereço</label>
                            <input type="text" id="endereçoCliente" name="endereco" required><br><br><br>
                            <input type="submit" name="Alterar" value="Alterar" />
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<br/>
<br/><br/><br/>
<%@include file="WEB-INF/jspf/rodape.jspf" %>
</html>
