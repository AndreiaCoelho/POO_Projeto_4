/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fatecpg.usuarios;

import java.util.HashMap;

/**
 *
 * @author Ricky
 */
public class BancoFornecedor {

    private static HashMap<String, Fornecedor> f;

    public static HashMap<String, Fornecedor> Usar() {
        f = new HashMap<>();
        return f;
    }
}
