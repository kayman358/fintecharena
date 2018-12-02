<%-- 
    Document   : post
    Created on : Feb 18, 2018, 10:17:33 PM
    Author     : Kolade
--%>

<%@include file="master-page.jsp" %>
    <body>
        <br/><br/>
        <div id="posts">
            <a href="<%=request.getContextPath()%>/open-banking/new-post">Create Post</a>
            
        </div><br/>
            <div id="postSubject">
                ${subject}
            </div>
           
            <div id="postBody">
             ${body}
            </div>
            <br />
            
            <c:forEach var="comment" items="${comments}">
                <div id="postBody">
                    <strong>Re:${subject}</strong>
            </div>
                <div id="postBody">
                    ${comment.getComment()}
            </div>
                
            </c:forEach>
            
            
            <br />
            <div id="comment">
                <center> <strong><a href="<%=request.getContextPath()%>/posts/${id}/comment">Reply to this Post</a></strong></center>
            </div>
            <br /><br /><br />
    </body>
       </div>
     <%@include file="footer.jsp"%>
</html>
