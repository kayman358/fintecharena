<%-- 
    Document   : open-banking
    Created on : Feb 17, 2018, 5:12:39 AM
    Author     : Kolade
--%>

<%@include file="master-page.jsp" %>
    <body>
        <br/><br/>
        <div id="posts">
            <a href="<%=request.getContextPath()%>/open-banking/new-post">Create New Post</a>
            
        </div>
        
             <c:forEach var="row" items="${query1.rows}">
                
                
                <a href="<%=request.getContextPath()%>/posts/<c:out value="${row.id}"/>"><c:out value="${row.subject}"/><br/></a>
                   
                
            </c:forEach>
    
    </body>
</div><br/><br/>
     <%@include file="footer.jsp"%>
</html>
