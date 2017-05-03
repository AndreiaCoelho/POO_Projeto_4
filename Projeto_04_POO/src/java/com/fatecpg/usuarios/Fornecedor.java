/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fatecpg.usuarios;

/**
 *
 * @author Ricky
 */
public class Fornecedor {

    private String nome;
    private String social;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;
    
    //Construtor 
    public Fornecedor(String nome, String social, String cnpj, String email, String telefone, String endereco) {
        this.nome = nome;
        this.social = social;
        this.cnpj = cnpj;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
    }
    
    
     public void insert() {
        BancoFornecedor.Usar().put(getCnpj(), this);
    }

    public static void update(String cnpj, Fornecedor c) {
        BancoFornecedor.Usar().replace(cnpj, c);
    }

    public static void delete(String cnpj) {
        BancoFornecedor.Usar().remove(cnpj);
    }
    
    //Getters e Setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSocial() {
        return social;
    }

    public void setSocial(String social) {
        this.social = social;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
    

}
