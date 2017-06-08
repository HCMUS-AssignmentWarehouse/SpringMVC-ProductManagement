<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>

<%--
  Created by IntelliJ IDEA.
  User: Genius Doan
  Date: 6/7/2017
  Time: 2:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login | HCMUS Product Management</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="/resources/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">

                <form name='loginForm'
                      action="<c:url value='/j_spring_security_check' />" method='POST'>
                    <h1>HCMUS Login</h1>


                    <div class="error" style="color: red">${error}</div>

                    <div class="msg" style="color: red;">${msg}</div>


                    <div>
                        <input type="text" name='username' class="form-control" placeholder="Username" required=""/>
                    </div>
                    <div>
                        <input type="password" name='password' class="form-control" placeholder="Password" required=""/>
                    </div>
                    <div>
                        <input name="submit" type="submit"
                               value="Log in" class="btn btn-default submit"/>
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>

                        <a class="reset_pass"
                           href="https://github.com/HCMUS-IceTeaViet-SE/SpringMVC-ProductManagement/tree/master/src/main/resources/test_account.txt">Lost
                            your password?</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">New to site?
                            <a href="https://www.facebook.com/hieutam22" class="to_register"> Contact admin for
                                accounts </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <h1>HCMUS Product Management</h1>
                            <p>©2017 <a href="http://iceteaviet.blogspot.com/">IceTeaViet - 1412477</a>.
                                <br>
                                Spring MVC Hibernate Java Servlet Development</p>
                        </div>
                    </div>

                </form>
            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <form>
                    <h1>Create Account</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Username" required=""/>
                    </div>
                    <div>
                        <input type="email" class="form-control" placeholder="Email" required=""/>
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Password" required=""/>
                    </div>
                    <div>
                        <a class="btn btn-default submit" href="index.html">Submit</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Already a member ?
                            <a href="#signin" class="to_register"> Log in </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <h1>HCMUS Product Management</h1>
                            <p>©2017 HCMUS - 1412477. Spring MVC Hibernate Java Servlet Development</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
</body>
</html>