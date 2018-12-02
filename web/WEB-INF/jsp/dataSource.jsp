


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">

        <title>Nigerian Fintech Forum</title>


        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

    </head>  
    <body>
        <sql:setDataSource var = "snap" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://my-awsinstance.csuymhdr8dkj.us-east-1.rds.amazonaws.com:3306/work"
         user="kayman358" password="Kanyinsola97" 
        />

        

        <sql:query dataSource="${snap}" var="query1">
          SELECT id, subject from posts order by id DESC
        </sql:query>
          
       
        
       
        
        
    </body>
</html>