<%-- 
    Document   : newUser
    Created on : Feb 19, 2018, 8:34:35 PM
    Author     : Kolade
--%>

<%@include file="master-page.jsp" %>
    <body>
        
             <br/><br/><br/><br/>
     <div class="row ">
                <div class="col-md-8 col-md-offset-2 col-sm-1 col-sm-offset-1 col-xs-10 col-xs-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Create New User Account</strong></h3>
                        </div>
                        <div class="panel-body">
                            
                            <form role="form" action="<%=request.getContextPath()%>/createUser" method="post" autocomplete="off" id="create_form1">
                                <br />
                                <div class="form-group input-group">


                                    <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                    <input name="username" id="username" type="text" class="form-control col-md-4" placeholder="Your Username " />
                                </div>
                                
                                
                                
                                <div class="form-group input-group">


                                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                    <input name="email" id="email" type="email" class="form-control col-md-4" placeholder="Your Email Address" />
                                </div>
                                

                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <input name="password" id="pass" type="password" class="form-control col-md-4" placeholder="Your Password"/>
                                </div>
                                
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <input name="confirmPassword" id="confirmPassword" type="password" class="form-control col-md-4" placeholder="Confirm Your Password"/>
                                </div>
                                
                                <div class="form-group">
                                    
                                </div>
                                <button type="submit" class="btn btn-primary">Create Account</button>
                                <input name="command" type="hidden" id="command" value="login">
                               
                            </form>
                        </div>
                    </div>
                </div></div>
                                <br /><br/><br/>
    </body>
    </div>
     <%@include file="footer.jsp"%>
</html>
