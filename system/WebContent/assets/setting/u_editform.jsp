<%@ page import="me.sysdev.tables.*, me.sysdev.dao.*, me.sysdev.connect.*,java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String id=request.getParameter("id");
	user u=userdao.getRecordById(Integer.parseInt(id));
%>
  
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Online Human Resource Information System</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/bootstrap-min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="../css/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="../css/flag-icon.min.css">
    <link rel="stylesheet" href="../css/cs-skin-elastic.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/util.css">
    <link href="../css/chartist.min.css" rel="stylesheet">
    <link href="../css/jqvmap.min.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
</head>
	<style>
		.text-color{color:white;background-color:#4c4c4c;}
		.bg-color{background-color:#323232;}
		.text-color2{color:white;background:transparent;}
	</style>
<body class="bg-color">
    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse bg-color">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="../index.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                    <li class="menu-title">Administrator Tools</li><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Users</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="../../admin/user/list.jsp">User List</a></li>
                            <li><i class="ti-settings"></i><a href="../../admin/user/setting.jsp">User Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Employees</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="../../admin/employee/list.jsp">Employee List</a></li>
                            <li><i class="ti-settings"></i><a href="../../admin/employee/setting.jsp">Employee Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Managers</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="../../admin/manager/list.jsp">Manager List</a></li>
                            <li><i class="ti-settings"></i><a href="../../admin/manager/setting.jsp">Manager Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Loan Management</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-list"></i><a href="../../admin/job/list.jsp">Loan List</a></li>
                            <li><i class="ti-desktop"></i><a href="../../admin/job/request.jsp">Loan Requests</a></li>
							<li><i class="ti-panel"></i><a href="../../admin/job/status.jsp">Loan Status</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="./"><img src="../img/logo.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./"><img src="../img/logo2.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="../assets/img/admin.jpg" alt="User Avatar">
                        </a>
                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                            <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                            <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- /#header -->
        <!-- Content -->
        <div class="content p-b-275">
            <div class="animated fadeIn">
                <div class="clearfix"></div>
                	<div class="orders">
                    	<div class="row">
                        	<div class="col-xl-12">
                            	<div class="card p-r-0">
                                	<div class="card-body">
                                		<input type="hidden" name="id" value="<%=u.getId() %>"/>
                                    	<h4 class="box-title text-color" style="text-align:center;">Editing, <%=u.getUsername() %>'s profile</h4><br />
                                    	<div style="align-content:center;">
                                    	<form action="../command/user/update.jsp" method="post">
                                    	<h4 class="box-title text-color">
                                    		<input type="hidden" name="id" value="<%=u.getId() %>"/>
                                    		<label>Username:</label><br />
                                    			<input value="<%=u.getUsername() %>" name="username" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid; padding-bottom: 5px"><br /><br />
                                    		<label>Password:</label><br />
                                    			<input type="password" value="<%=u.getPassword() %>" name="password" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid; padding-bottom: 5px"><br /><br />
                                    		<label>Repeat Password:</label><br />
                                    			<input type="password" value="<%=u.getCpassword() %>" name="cpassword" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid; padding-bottom: 5px"><br /><br />
                                    		<label>Email:</label><br />
                                    			<input value="<%=u.getEmail() %>" name="email" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid; padding-bottom: 5px"><br /><br />
                                    		</h4>
										<div>
											<span class="text-color2">Position</span><br />
												<select name="status" style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid">
													<option value="employee">Employee</option>
													<option value="admin">Admin</option>
													<option value="manager">Manager</option>
												</select>
											<span></span>
										</div><br />
                                    	<div style="padding-left:51em;">
                                    		<button type="submit" style="width: 8em; background:transparent; color:white; border:none; border-bottom:3px black solid">Update User</button>
                                    	</div>
                                    	</form>
                                    	<form action="../../admin/user/setting.jsp">
											<button type="submit" style="width: 8em; background:transparent; color:white; border:none; border-bottom:3px black solid">Cancel</button>
                                    	</form>
                                	</div>
                                	</div>
                            		</div> <!-- /.card -->
                        		</div>  <!-- /.col-lg-8 -->
                    		</div>
                		</div>
           			</div>
       			</div>
        <!-- /.content -->
        <div class="clearfix"></div>
        <!-- Footer -->
        <footer class="site-footer bg-color">
            <div class="footer-inner">
                <div class="row">
                    <div class="col-sm-6">
                        Copyright &copy; 2018 JSP System Development
                    </div>
                    <!-- <div class="col-sm-6 text-right">
                        Designed by <a href="https://colorlib.com">Colorlib</a>
                    </div> -->
                </div>
            </div>
        </footer>
        <!-- /.site-footer -->
    </div>
    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.matchHeight.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/modal.js"></script>
</body>
</html>