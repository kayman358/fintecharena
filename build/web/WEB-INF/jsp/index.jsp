<%-- 
    Document   : index
    Created on : Feb 16, 2018, 11:54:13 AM
    Author     : Kolade
--%>
<%@include file="dataSource.jsp" %>
<%@include file="master-page.jsp" %>
            <br />
        <div id="news"><br/>
            
            
            <c:forEach var="row" items="${query1.rows}">
                
                
                <a href="<%=request.getContextPath()%>/posts/<c:out value="${row.id}"/>"><c:out value="${row.subject}"/><br/></a>
                   
                
            </c:forEach>
            <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria</a><br/>
            <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br>
           <a href>Open Banking System in Nigeria</a><br/>
           <a href>Open Banking System in Nigeria is just starting out in Nigeria</a><br/>
        <br/></div>
        </div>
        <br />
        
        <%@include file="footer.jsp"%>
</html>
