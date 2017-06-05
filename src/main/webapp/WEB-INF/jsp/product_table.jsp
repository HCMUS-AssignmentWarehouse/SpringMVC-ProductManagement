<%--
  Created by IntelliJ IDEA.
  User: tamdoan
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

    <title>Data Table | HCMUS Admin</title>

    <!-- Bootstrap -->
    <link href="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/resources/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="/resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

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
                                        <span class="image"><img src="resources/images/img.jpg"
                                                                 alt="Profile Image"/></span>
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
                                        <span class="image"><img src="resources/images/img.jpg"
                                                                 alt="Profile Image"/></span>
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
                                        <span class="image"><img src="resources/images/img.jpg"
                                                                 alt="Profile Image"/></span>
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
                                        <span class="image"><img src="resources/images/img.jpg"
                                                                 alt="Profile Image"/></span>
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
                        <h3>Users
                            <small>Data from inputing and adding by Forms</small>
                        </h3>
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
                                <h2>User data
                                    <small>Select any user from the table and press Delete to remove. Or click on View
                                        buttons at the end of rows to view this user's information.
                                    </small>
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
                                            <th class="bulk-actions" colspan="7">
                                                <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions (
                                                    <span class="action-cnt"> </span> ) <i
                                                            class="fa fa-chevron-down"></i></a>
                                            </th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        {{#each data}}
                                        <tr class="even pointer">
                                            <td class="a-center ">
                                                <input type="checkbox" class="flat select-cb" name="table_records">
                                            </td>
                                            <td class=" ">${id}</td>
                                            <td class=" ">${name}</td>
                                            <td class=" ">${description}</td>
                                            <td class=" ">${quantity}</td>
                                            <td class=" ">${type}</td>
                                            <td class=" ">${expiryDate}</td>
                                            <td class="a-right a-right ">${price}</td>
                                            <td class="view-detail last"><a href="#"><b>View</b></a></td>
                                        </tr>
                                        {{/each}}
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
            <!-- iCheck -->
            <script src="/resources/vendors/iCheck/icheck.min.js"></script>
            <!-- Datatables -->
            <script src="/resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
            <script src="/resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
            <script src="/resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
            <script src="/resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
            <script src="/resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
            <script src="/resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
            <script src="/resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
            <script src="/resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
            <script src="/resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
            <script src="/resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
            <script src="/resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
            <script src="/resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
            <script src="/resources/vendors/jszip/dist/jszip.min.js"></script>
            <script src="/resources/vendors/pdfmake/build/pdfmake.min.js"></script>
            <script src="/resources/vendors/pdfmake/build/vfs_fonts.js"></script>

            <script type="text/javascript">
                $(document).ready(function () {
                    $("#btn_delete").click(function () {
                        var index = 0;
                        $('.select-cb:checkbox:checked').each(function () {
                            index = $(this).closest("tr").index();
                            alert("Delete data in row (" + (index + 1) + ") ?");
                        });

                        $.post("product_table.html", {action: 'delete', index: index}, function (res) {
                            window.location = "/";
                        });
                    });

                    $(".view-detail").each(function (index) {
                        $(this).on("click", function () {
                            var index = $(this).closest("tr").index();
                            window.location = ("/edit_product_form.html/?index=" + index);
                        });
                    });
                });
            </script>

            <!-- Custom Theme Scripts -->
            <script src="/resources/js/custom.min.js"></script>

</body>
</html>