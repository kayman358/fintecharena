<%-- 
    Document   : comment
    Created on : Mar 25, 2018, 7:35:04 AM
    Author     : Kolade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="master-page.jsp" %>

<body>
  
        <br/><br/>
        <div class="row ">
            <h4 style="color: green"><strong>${subject}</strong></h4>
            <div >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title"><strong><center>Create Comment</center></strong></h2>
                    </div>
                    
                    <div class="panel-body">

                        <form  action="<%=request.getContextPath()%>/posts/${id}/addcomment" method="post" autocomplete="off" id="create_comment">
                           


                            <div class="form-group">
                                <label class="control-label">Comment:</label>
                                
                                <textarea class="ckeditor" id="editor" name="comment"></textarea>
                                
                            </div>
                            <br />

                            <button type="submit" class="btn btn-primary">Add Comment</button>
                            

                        </form>
                    </div>
                </div>
            </div></div>

</body>
</div>
<script>
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .catch( error => {
                console.error( error );
            } );
          CKEDITOR.replace("editor",
{   
    width:'70%',
     height: 500
});


    </script>
     <%@include file="footer.jsp"%>
</html>

