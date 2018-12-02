

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="master-page.jsp" %>
<body>
    
        <br/><br/>
        <div class="row ">
            <div >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title"><strong><center>Create Topic</center></strong></h2>
                    </div>
                    <div class="panel-body">

                        <form  action="<%=request.getContextPath()%>/open-banking/new-post/createPost" method="post" autocomplete="off" id="create_post">
                           


                            <div class="form-group required">
                                <label class="control-label">Topic:</label>
                                <input type="text" class="form-control" id="subject" name ="subject" placeholder="Your topic here" maxlength="200" required="required">
                            </div>
                            <br />
                            
                            <div class="form-group required">
                                <label class="control-label">Content:</label>
                                <textarea class="ckeditor" id="editor" name="body"></textarea>
                            </div>
                            <br />

                            <button type="submit" class="btn btn-primary">Create Topic</button>
                            

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
