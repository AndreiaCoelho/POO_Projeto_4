/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fatecpg.usuarios;

import java.util.ArrayList;

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
    
    private static ArrayList<Cliente> clientes;
    
    public static ArrayList<Cliente> getCliente(){
        return clientes;
    }

    public void setCliente(String nome, String rg, String cpf, String email, String telefone, String endereco){
        this.setNome(nome);
        this.setRg(rg);
        this.setCpf(cpf);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setEndereco(endereco);    
    } 
    
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
