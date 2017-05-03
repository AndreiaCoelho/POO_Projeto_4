<%-- 
    Document   : cliente
    Created on : 02/05/2017, 17:25:01
    Author     : Andréia
--%>

<%@page import="com.fatecpg.usuarios.BancoCliente"%>
<%@page import="com.fatecpg.usuarios.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (BancoCliente.c == null) {
        Cliente c1 = new Cliente("1", "1", "1", "1", "1", "1");
        BancoCliente.c.put(c1.getCpf(), c1);
    }
    if (request.getParameter("Deletar") != null) {
        String cpf = request.getParameter("cpf");
        Cliente.delete(cpf);
    } else if (request.getParameter("Alterar") != null) {
        String nome = request.getParameter("nome");
        String rg = request.getParameter("rg");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereco = request.getParameter("endereco");
        Cliente c = new Cliente(nome, rg, cpf, email, fone, endereco);
        Cliente.update(cpf, c);
    }%>
<%    if (request.getParameter("Enviar") != null) {
        String nome = request.getParameter("nome");

        String rg = request.getParameter("rg");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        String fone = request.getParameter("fone");
        String endereco = request.getParameter("endereco");
        Cliente c = new Cliente(nome, rg, cpf, email, fone, endereco);
        c.insert(c);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
    <center><h2 > Pagina de Clientes </h2></center><br><br>
    <button style="margin-left: 5%" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#Inserir">Inserir dados do cliente</button>
    <button style="margin-left: 5%" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#Delete">Deletar dados do cliente</button>
    <button style="margin-left: 5%" type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#Inserir">Alterar dados do cliente</button><br><br>


    <table style="border-style: dotted;margin-left: 5%">
        <thead>
            <tr style="border-style: dotted">
                <th style="border-style: double">Nome &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">RG &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">CPF &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">Telefone &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                <th style="border-style: double">Endereço &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            <% for (String key : BancoCliente.c.keySet()) { %>
            <tr>
                <% Cliente c = BancoCliente.c.get(key);%>
                <td style="border-style: double"><%= c.getNome()%></td>
                <td style="border-style: double"><%= c.getRg()%></td>
                <td style="border-style: double"><%= c.getCpf()%></td>
                <td style="border-style: double"><%= c.getEmail()%></td>
                <td style="border-style: double"><%= c.getTelefone()%></td>
                <td style="border-style: double"><%= c.getEndereco()%></td>
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
                    <h4 class="modal-title">Inserir dados do cliente</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div>
                            <label for="nome">Nome</label>
                            <input type="text" id="nomeCliente" name="nome" required><br>
                            <label for="razao">RG</label>
                            <input type="text" id="rgCliente" name="rg" required><br>
                            <label for="cnpj">CPF</label>
                            <input type="text" id="cpfCliente" name="cpf" required><br>
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
                    <h4 class="modal-title">Deletar dados do cliente</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div>
                            <label for="cpf">CPF</label>
                            <input type="text" id="cpfCliente" name="cpf" required><br><br><br>
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
                    <h4 class="modal-title">Alterar dados do cliente</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div>
                            <label for="nome">Nome</label>
                            <input type="text" id="nomeCliente" name="nome" required><br>
                            <label for="razao">RG</label>
                            <input type="text" id="rgCliente" name="rg" required><br>
                            <label for="cnpj">CPF</label>
                            <input type="text" id="cpfCliente" name="cpf" required><br>
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