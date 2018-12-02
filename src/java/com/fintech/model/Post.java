/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fintech.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author IBRAHIM
 */

public class Post implements Serializable {
    

    private long id;
    private String subject;
    private String body;
    List<Comment> comments = new ArrayList<>();

    
    public void addComment (Comment c){
        comments.add(c);
    }
    
    public void removeComment (Comment c){
        comments.remove(c);
    }
    
    public List<Comment> getComments(){
        return comments;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }
}
