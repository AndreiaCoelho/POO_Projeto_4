/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fatecpg.usuarios;

/**
 *
 * @author Andréia
 */
public class Cliente {
    private String nome;
    private String rg;
    private String cpf;
    private String email;
    private String telefone;
    private String endereco;
    
      //construtor
      public Cliente(String nome, String rg, String cpf, String email, String telefone, String endereco) {
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
        this.email = email;
        this.telefone = telefone;
        this.endereco = endereco;
    }
 
    //metodos para o HashMap
    public void insert(Cliente c) {
        BancoCliente.c.put(getCpf(), c);
    }

    public static void update(String cpf, Cliente c) {
        BancoCliente.c.replace(cpf, c);
    }

    public static void delete(String cpf) {
        BancoCliente.c.remove(cpf);
    }
    
    //metodos getters e setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
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