<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Genius Doan
  Date: 04/06/2017
  Time: 11:54
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

    <title>Product Table | HCMUS Product Management</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="/resources/vendors/datatables.net/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/resources/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/" class="site_title"><span>HCMUS Product Management</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <a href="/admin_profile"><img src="/resources/images/img.jpg" alt="..."
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
                                    <li><a href="admin_add_product_form.html">Import Product</a></li>
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
                        <h3>Products
                            <small>Data from importing and adding by Forms</small>
                        </h3>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Product data
                                    <small>Select any product from the table and press <b>Delete</b> to remove. Or click
                                        on <b>View</b>
                                        buttons at the end of rows to view this product's information.
                                    </small>
                                </h2>
                                <div class="clearfix"></div>
                            </div>

                            <div class="x_content">

                                <button type="submit" id="btn_delete" class="btn btn-success">Delete</button>

                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr class="headings">
                                            <th>
                                                <input type="checkbox" id="check-all" class="flat">
                                            </th>
                                            <th class="column-title">Product Id</th>
                                            <th class="column-title">Product Name</th>
                                            <th class="column-title">Description</th>
                                            <th class="column-title">Quantity</th>
                                            <th class="column-title">Type</th>
                                            <th class="column-title">Expiry Date</th>
                                            <th class="column-title">Price</th>
                                            <th class="column-title no-link last"><span class="nobr">Action</span>
                                            </th>
                                            <th class="bulk-actions" colspan="8">
                                                <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions (
                                                    <span class="action-cnt"> </span> ) <i
                                                            class="fa fa-chevron-down"></i></a>
                                            </th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${productList}" var="product">
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat select-cb" name="table_records">
                                                </td>
                                                <td class=" product_id">${product.id}</td>
                                                <td class=" product_name">${product.name}</td>
                                                <td class=" ">${product.description}</td>
                                                <td class=" ">${product.quantity}</td>
                                                <td class=" ">${product.type}</td>
                                                <td class=" ">${product.expiryDate}</td>
                                                <td class="a-right a-right ">${product.price}</td>
                                                <td class="view-detail last"><a href="#"><b>View</b></a></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /page content -->

                    <!-- footer content -->
                    <footer>
                        <div class="pull-right">
                            HCMUS Spring MVC - Product Management by <a
                                href="http://iceteaviet.blogspot.com/">1412477</a>
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
            <!-- Datatables -->
            <script src="/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/dataTables.bootstrap.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/dataTables.buttons.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/buttons.bootstrap.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/buttons.flash.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/buttons.html5.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/buttons.print.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/dataTables.fixedHeader.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/dataTables.keyTable.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/dataTables.responsive.min.js"></script>
            <script src="/resources/vendors/datatables.net/js/responsive.bootstrap.js"></script>
            <script src="/resources/vendors/datatables.net/js/dataTables.scroller.min.js"></script>

            <script type="text/javascript">
                $(document).ready(function () {
                    $("#btn_delete").click(function () {
                        var index = 0;
                        var id = [];
                        $('.select-cb:checkbox:checked').each(function () {
                            index = $(this).closest("tr").index();  //Get row index
                            id.push($(".product_id")[index].innerText);
                        });

                        alert("Delete data in row(s) [" + id + "] ?");

                        window.location = "<c:url value="admin_delete_product"/>" + "?id=" + id;
                    });

                    $(".view-detail").each(function (index) {
                        $(this).on("click", function () {
                            var index = $(this).closest("tr").index(); //Get row index
                            var id = $(".product_id")[index].innerText;

                            if (id == "")
                                alert("Invalid product ID. Please refresh this page and try again!");
                            else
                                window.location = "<c:url value="admin_update_product_form"/>" + "?id=" + id;
                        });
                    });
                });
            </script>

            <!-- Custom Theme Scripts -->
            <script src="/resources/js/custom.min.js"></script>

</body>
</html>