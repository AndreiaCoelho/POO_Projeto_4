<%-- 
    Document   : cliente
    Created on : 02/05/2017, 17:25:01
    Author     : Andréia
--%>

<%@page import="com.fatecpg.usuarios.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <fieldset>
            <legend>Novo Contato</legend>
            <form>
                Nome: <input type="text" name="nome"/>
                RG: <input type="text" name="rg"/>
                CPF: <input type="text" name="cpf"/>
                Email: <input type="text" name="email"/>
                Telefone: <input type="text" name="telefone"/>
                Endereço: <input type="text" name="endereco"/>
                <input type="submit" name="incluir" value="Incluir"/>
            </form>
            <%
                try {
                    if (request.getParameter("incluir") != null) {
                        String nome = request.getParameter("nome");
                        String rg = request.getParameter("rg");
                        String cpf = request.getParameter("cpf");
                        String email = request.getParameter("email");
                        String telefone = request.getParameter("telefone");
                        String endereco = request.getParameter("endereco");
                        Cliente c = new Cliente();
                        c.setNome(nome);
                        c.setRg(rg);
                        c.setCpf(cpf);
                        c.setEmail(email);
                        c.setTelefone(telefone);
                        c.setEndereco(endereco);
                        Cliente.getCliente().add(c);
                        response.sendRedirect(request.getRequestURI());
                    } else if (request.getParameter("excluir") != null) {
                        String nome = request.getParameter("nome");
                        for (int i = 0; i < Cliente.getCliente().size(); i++) {
                            if (Cliente.getCliente().get(i).getNome().equals(nome)) {
                                Cliente.getCliente().remove(i);
                                break;
                            }
                        }
                        response.sendRedirect(request.getRequestURI());
                    }
                } catch (Exception ex) {%>
            <div style="color: red;">Erro: <%= ex.getMessage()%></div>
            <%}
            %>
        </fieldset><br/>

        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>RG</th>
                <th>CPF</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Comandos</th>
            </tr>
            <% for (int i = 0; i < Cliente.getCliente().size(); i++) { %>
            <% Cliente c = Cliente.getCliente().get(i);%>
            <tr>
                <td><%= i%></td>
                <td><%= c.getNome()%></td>
                <td><%= c.getRg()%></td>
                <td><%= c.getCpf()%></td>
                <td><%= c.getEmail()%></td>
                <td><%= c.getTelefone()%></td>
                <td><%= c.getEndereco()%></td>
                <td>
                    <form>
                        <input type="hidden" name="nome" value="<%= c.getNome()%>"/>
                        <input type="submit" name="excluir" value="Excluir"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
