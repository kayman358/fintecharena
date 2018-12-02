<%-- 
    Document   : login
    Created on : Feb 15, 2018, 3:43:48 PM
    Author     : IBRAHIM
--%>
<%@include file="master-page.jsp" %>
    <body>
        
             <br/><br/><br/><br/><br/>
     <div class="row ">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Enter Username and Password</strong></h3>
                        </div>
                        <div class="panel-body">
                            
                            <form role="form" action="userLogin" method="post" autocomplete="off" id="login_form1">
                                <br />
                                <div class="form-group input-group">


                                    <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                    <input name="user" id="user" type="text" class="form-control col-md-4" placeholder="Your Username " />
                                </div>

                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <input name="pass" id="pass" type="password" class="form-control col-md-4" placeholder="Your Password"/>
                                </div>
                                <div class="form-group">
                                    <span class="pull-right">
                                        <a href="#">Forgot password ?</a>
                                    </span>
                                </div>
                                <button type="submit" class="btn btn-primary">Sign me in!</button>
                                <input name="command" type="hidden" id="command" value="login">
                               
                            </form>
                            <center><h1 style="color: red"><strong>${wrong}</strong></h1></center>
                        </div>
                    </div>
                </div></div>
      <br/><br/><br/><br/>   <br/><br/> </body></div>
     <%@include file="footer.jsp"%>
</html>
