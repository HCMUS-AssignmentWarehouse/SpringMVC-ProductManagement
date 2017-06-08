<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>

<%--
  Created by IntelliJ IDEA.
  User: Genius Doan
  Date: 05/06/2017
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Profile | HCMUS Product Management</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/" class="site_title"> <span>HCMUS Product Management</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <a href="/user_profile"><img src="/resources/images/img.jpg" alt="..."
                                                     class="img-circle profile_img"></a>
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>${username}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="index.html">Dashboard</a></li>
                                </ul>
                            </li>
                            <li><a href="user_profile.html"><i class="fa fa-table"></i> Profile <span
                                    class="fa fa-chevron-down"></span></a>
                            </li>
                            <li><a><i class="fa fa-table"></i> Data <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="user_product_table.html">Product Table</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
                                <img src="resources/images/img.jpg" alt="">${username}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="/user_profile"> Profile</a></li>
                                <li>
                                    <c:url var="logoutUrl" value="/j_spring_security_logout"/>
                                    <form style="width: 100%;" action="${logoutUrl}" method="post">
                                        <input style="line-height: 20px; padding: 5px 15px 5px 20px; color: #5A738E; text-align: left; font-weight: 400;width: 100%; height: 80%; font-size: 12px; border: none; background-color: transparent; outline: none;"
                                               type="submit" value="Logout"/>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>User Profile</h3>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>STAFF
                                    <small>User's personal information</small>
                                </h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                                    <div class="box-body box-profile"><img src="/resources/images/img.jpg"
                                                                           alt="User profile picture"
                                                                           class="profile-user-img img-responsive img-circle"/>
                                        <h3 class="profile-username text-center">${profile.full_name}</h3>
                                        <p class="text-muted text-center">${profile.email}</p>
                                    </div>
                                    <br>
                                    <div class="box-body">
                                        <strong><i class="fa fa-book margin-r-5"></i> Education</strong>
                                        <p class="text-muted">CSE Student @ FIT HCMUS</p>
                                        <strong><i class="fa fa-briefcase user-profile-icon"></i> Work</strong>
                                        <p class="text-muted">Mobile Software Engineer @ <a href="https://cms.rta.vn/">RTA</a>
                                        </p>
                                        <i class="fa fa-external-link user-profile-icon"></i>
                                        <a href="http://iceteaviet.blogspot.com/" target="_blank">www.iceteaviet.blogspot.com/</a>
                                        <hr/>
                                        <strong><i class="fa fa-map-marker margin-r-5"></i> Address</strong>
                                        <p class="text-muted">District 8, HCM city</p>
                                        <hr/>
                                        <strong><i class="fa fa-pencil margin-r-5"></i> Skills</strong>
                                        <p><span class="label label-danger">NodeJS</span><span
                                                class="label label-success">PHP</span><span class="label label-info">Javascript</span><span
                                                class="label label-warning">Java</span><span
                                                class="label label-primary">C/C++</span></p>
                                    </div>

                                </div>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">My Profile</h3>
                                    </div>
                                    <!-- /.box-header-->
                                    <!-- form start-->
                                    <form class="form-horizontal">
                                        <div class="box-body">
                                            <div class="row">
                                                <div class="col-md-offset-0 col-md-11">
                                                    <div class="form-group">
                                                        <label for="inputName"
                                                               class="col-sm-2 control-label">Name</label>
                                                        <div class="col-sm-10">
                                                            <input id="inputName" type="text"
                                                                   value="${profile.full_name}" placeholder="Name"
                                                                   class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputStudentID" class="col-sm-2 control-label">User
                                                            Name</label>
                                                        <div class="col-sm-10">
                                                            <input id="inputStudentID" type="text"
                                                                   value="${profile.username}" placeholder="User Name"
                                                                   class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPhone"
                                                               class="col-sm-2 control-label">Birthday</label>
                                                        <div class="col-sm-10">
                                                            <input id="inputPhone" type="text"
                                                                   value="${profile.birthday}" placeholder="Birthday"
                                                                   class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputEmail"
                                                               class="col-sm-2 control-label">Email</label>
                                                        <div class="col-sm-10">
                                                            <input id="inputEmail" type="text" value="${profile.email}"
                                                                   placeholder="Email" class="form-control"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputPhone" class="col-sm-2 control-label">Phone
                                                            Number</label>
                                                        <div class="col-sm-10">
                                                            <input id="inputPhone" type="text" value="${profile.phone}"
                                                                   placeholder="Phone Number" class="form-control"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="box-footer">
                                            <div class="row">
                                                <div class="col-md-offset-0 col-md-11">
                                                    <div class="pull-right"><a type="submit" href="/admin"
                                                                               class="btn btn-success btn-flat">Back</a><a
                                                            type="submit" href="/admin" class="btn btn-danger btn-flat">Save</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                HCMUS Spring MVC - Product Management by <a href="http://iceteaviet.blogspot.com/">1412477</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="/resources/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/resources/vendors/fastclick/lib/fastclick.js"></script>
<!-- Custom Theme Scripts -->
<script src="/resources/js/custom.min.js"></script>

</body>
</html>