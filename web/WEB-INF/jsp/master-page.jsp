<%-- 
    Document   : master-page
    Created on : Feb 17, 2018, 5:25:53 AM
    Author     : Kolade
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>


<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/resources/js/script.js" type="text/javascript"></script>
<link type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet"/>
<link type="text/css" href="<%=request.getContextPath()%>/resources/css/intlTelInput.css" rel="stylesheet"/>
<link type="text/css" href="<%=request.getContextPath()%>/resources/css/bootstrap.css" rel="stylesheet"/>
<link type="text/css" href="<%=request.getContextPath()%>/resources/css/style.css" rel="stylesheet"/>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/intlTelInput.js"></script>
<link href="<%=request.getContextPath()%>/resources/css/font-awesome.css" rel="stylesheet" type="text/css"/>


<html>
    <head>
       <!-- <script src="<%=request.getContextPath()%>/resources/js/ckeditor.js" type="text/javascript"></script>-->
      <!--  <script src="https://cdn.ckeditor.com/ckeditor5/1.0.0-beta.1/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/1.0.0-beta.2/balloon/ckeditor.js"></script>-->
      <script src="https://cdn.ckeditor.com/4.9.2/standard-all/ckeditor.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nigeria FinTech Forum</title>
    </head>
    
    
    <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="http://fintecharena.us-east-1.elasticbeanstalk.com">
                         <img alt="Brand" src="<%=request.getContextPath()%>/resources/js/download.png" height="75">
                        
                    </a>
                    <h3 style="color: white; margin-left: 1100px; margin-top: 11px"><strong>Fintech Arena </strong></h3>
                   
                   <!-- <h1 style="color: white"><strong><center><a id="main" href="<%=request.getContextPath()%>">FinTech Arena</a></center></strong></h1>-->
        <em><center style="color: white">Our Money bounds us, we are one Naija</center></em>
        <%String date = new Date().toString(); %>
       <center style="color: white"> Welcome, <strong>${username} | Date: <%=date%> |  
                <a href="<%=request.getContextPath()%>/userLogin">Login</a> | New User?  
                <a href="<%=request.getContextPath()%>/newUser">Join</a></strong></center>
       
                </div>
            </div>
        </nav>
    <br/>
<br/> 
   <br/>
<br/>    <br/><br/>
<div id="topics">
                <a href="<%=request.getContextPath()%>/open-banking">Mobile Money</a> 
                |  <a href="<%=request.getContextPath()%>/open-banking">USSD</a> | <a href="<%=request.getContextPath()%>/open-banking">Open Banking</a>
                | <a href="<%=request.getContextPath()%>/open-banking">Telcos</a> | <a href="<%=request.getContextPath()%>/open-banking">Gigs</a><br/>
                 <a href="<%=request.getContextPath()%>/open-banking">Mobile Money</a> |  
                 <a href="<%=request.getContextPath()%>/open-banking">USSD</a> | <a href="<%=request.getContextPath()%>/open-banking">Open Banking</a>
                 | <a href="<%=request.getContextPath()%>/open-banking">Telcos</a> | 
                 <a href="<%=request.getContextPath()%>/open-banking">Mobile Money</a> |  
                 <a href="<%=request.getContextPath()%>/open-banking">USSD</a> | 
                 <a href="<%=request.getContextPath()%>/open-banking">Open Banking</a> | 
                 <a href="<%=request.getContextPath()%>/open-banking">Telcos</a>
            </div>
 <!--  <img src="<%=request.getContextPath()%>/resources/js/header.jpg" alt="" width="1348" height=""/><h1>-->
    
        <div class="container">
            
            
            
      
                 
                 