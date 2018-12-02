/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fintech.services;

/**
 *
 * @author Kolade
 */
public class Service {
    
    String password;
    String confirmPassword;

    public Service(String password, String confirmPassword) {
        this.password = password;
        this.confirmPassword = confirmPassword;
    }
    
   
    
    public boolean confirmPassword(){
    
        boolean result;
    System.out.println("password is "+password);
    result = password.equals(confirmPassword);
    
    return result;
    
    } 
}
