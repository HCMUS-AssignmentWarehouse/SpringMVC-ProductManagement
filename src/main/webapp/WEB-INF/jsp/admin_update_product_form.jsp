<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>

<%--
  Created by IntelliJ IDEA.
  User: Genius Doan
  Date: 04/06/2017
  Time: 11:52
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

    <title>Update Product | HCMUS Product Management</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/" class="site_title"></i> <span>HCMUS Product Management</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <a href="/profile"><img src="/resources/images/img.jpg" alt="..."
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
                            <li><a><i class="fa fa-edit"></i> Editor <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="add_product_form.html">Import Product</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-table"></i> Data <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="admin_product_table.html">Product Table</a></li>
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
                                <li><a href="/admin_profile"> Profile</a></li>
                                <li><c:url var="logoutUrl" value="/j_spring_security_logout"/>
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
                        <h3>Product Updating Form</h3>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Product Information
                                    <small>modify and press <b>Save</b> to take effect</small>
                                </h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <br/>
                                <form:form id="demo-form2" modelAttribute="product"
                                           class="form-horizontal form-label-left"
                                           method="post" action="/admin_update_product">
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="product-id">Product ID <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input type="text" id="product-id" name="product_id" path="id"
                                                        required="required" class="form-control col-md-7 col-xs-12"
                                                        readonly="true"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="product-name">Product Name <span class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input type="text" id="product-name" name="product_name" path="name"
                                                        required="required" class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="product-description">Description <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input type="text" id="product-description" name="product_description"
                                                        path="description" required="required"
                                                        class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="product-quantity"
                                               class="control-label col-md-3 col-sm-3 col-xs-12">Quantity </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input id="product-quantity" class="form-control col-md-7 col-xs-12"
                                                        type="text" name="product_quantity" path="quantity"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                               for="product-price">Price <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input type="text" id="product-price" name="product_price" path="price"
                                                        required="required" class="form-control col-md-7 col-xs-12"/>
                                        </div>
                                    </div>
                                    <%-- TODO: change to radio button --%>
                                    <div class="form-group">
                                        <label for="product-type"
                                               class="control-label col-md-3 col-sm-3 col-xs-12">Type </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input id="product-type" class="form-control col-md-7 col-xs-12"
                                                        type="text" name="product_type" path="type"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Expiry Date <span
                                                class="required">*</span>
                                        </label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <form:input id="product-expiry-date" path="expiryDate"
                                                        name="product_expiry_date"
                                                        class="date-picker form-control col-md-7 col-xs-12"
                                                        required="required" type="text"/>
                                        </div>
                                    </div>
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <button class="btn btn-primary" id="btn_cancel" onclick="goToIndex()"
                                                    type="button">Cancel
                                            </button>
                                            <button type="submit" class="btn btn-success">Save</button>
                                        </div>
                                    </div>

                                </form:form>
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
<!-- iCheck -->
<script src="/resources/vendors/iCheck/icheck.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="/resources/js/custom.min.js"></script>
<script type="text/javascript">
    function goToIndex() {
        window.location.replace('/');
    }
</script>
</body>
</html>