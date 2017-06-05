<%--
  Created by IntelliJ IDEA.
  User: tamdoan
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

    <title>Edit Profile | HCMUS Admin</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="/resources/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/" class="site_title"><i class="fa fa-paw"></i> <span>HCMUS Admin</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <a href="/profile.html"><img src="/resources/images/img.jpg" alt="..."
                                                     class="img-circle profile_img"></a>
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>{{username}}</h2>
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
                            <li><a><i class="fa fa-edit"></i> Edit <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="add_product_form.html">Input Form</a></li>
                                    <li><a href="edit_product_form.html">Edit Form</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="product_table.html">Data Table</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
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
                                <img src="resources/images/img.jpg" alt="">{{username}}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="javascript:;"> Profile</a></li>
                                <li>
                                    <a href="javascript:;">
                                        <span class="badge bg-red pull-right">50%</span>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown"
                               aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="images/picture.jpg" alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="images/picture.jpg" alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="images/picture.jpg" alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="images/picture.jpg" alt="Profile Image"/></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
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

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>User Report
                                    <small>Activity report</small>
                                </h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                           aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                                    <div class="box-body box-profile"><img src="/resources/images/img.jpg" alt="User profile picture" class="profile-user-img img-responsive img-circle"/>
                                        <h3 class="profile-username text-center">Đoàn Hiếu Tâm</h3>
                                        <p class="text-muted text-center">nhoxbypass@gmail.com</p>
                                    </div>
                                    <div class="box-body"><strong><i class="fa fa-book margin-r-5"></i> Education</strong>
                                        <p class="text-muted">Student in Software Engineering Faculty - HCMUS - Vietnam</p>
                                        <hr/><strong><i class="fa fa-map-marker margin-r-5"></i> Address</strong>
                                        <p class="text-muted">District 8, HCM city</p>
                                        <hr/><strong><i class="fa fa-pencil margin-r-5"></i> Skills</strong>
                                        <p><span class="label label-danger">NodeJS</span><span class="label label-success">PHP</span><span class="label label-info">Javascript</span><span class="label label-warning">Java</span><span class="label label-primary">C/C++</span></p>
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
                                                            <label for="inputName" class="col-sm-2 control-label">Name</label>
                                                            <div class="col-sm-10">
                                                                <input id="inputName" type="text" value="Đoàn Hiếu Tâm" placeholder="Name" class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputStudentID" class="col-sm-2 control-label">User Name</label>
                                                            <div class="col-sm-10">
                                                                <input id="inputStudentID" type="text" value="1412477" placeholder="User Name" class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputPhone" class="col-sm-2 control-label">Birthday</label>
                                                            <div class="col-sm-10">
                                                                <input id="inputPhone" type="text" value="22/12/1995" placeholder="Birthday" class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                                                            <div class="col-sm-10">
                                                                <input id="inputEmail" type="text" value="nhoxbypass@gmail.com" placeholder="Email" class="form-control"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputPhone" class="col-sm-2 control-label">Phone Number</label>
                                                            <div class="col-sm-10">
                                                                <input id="inputPhone" type="text" value="+(84)168 493 4109" placeholder="Phone Number" class="form-control"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="box-footer">
                                                <div class="row">
                                                    <div class="col-md-offset-0 col-md-11">
                                                        <div class="pull-right"><a type="submit" href="/admin" class="btn btn-success btn-flat">Back</a><a type="submit" href="/admin" class="btn btn-danger btn-flat">Save</a></div>
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
                HCMUS Admin - Bootstrap Admin Panel by <a href="https://colorlib.com">1412477</a>
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
<!-- NProgress -->
<script src="/resources/vendors/nprogress/nprogress.js"></script>
<!-- morris.js -->
<script src="/resources/vendors/raphael/raphael.min.js"></script>
<script src="/resources/vendors/morris.js/morris.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="/resources/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/resources/vendors/moment/min/moment.min.js"></script>
<script src="/resources/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- Custom Theme Scripts -->
<script src="/resources/js/custom.min.js"></script>

</body>
</html>