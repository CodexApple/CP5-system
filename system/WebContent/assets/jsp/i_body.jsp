<%@ page import="me.sysdev.tables.*, me.sysdev.dao.*, me.sysdev.connect.*,java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%List<user> list=userdao.getAllRecords();
	request.setAttribute("list",list);%>

<body class="bg-color">
	<jsp:include page="../command/validate.jsp"></jsp:include>
    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse bg-color">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="index.jsp"><i class="menu-icon fa fa-laptop"></i>Dashboard </a>
                    </li>
                    <li class="menu-title">Administrator Tools</li><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Users</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="user/list.jsp">User List</a></li>
                            <li><i class="ti-settings"></i><a href="user/setting.jsp">User Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Employees</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="employee/list.jsp">Employee List</a></li>
                            <li><i class="ti-settings"></i><a href="employee/setting.jsp">Employee Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Managers</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="manager/list.jsp">Manager List</a></li>
                            <li><i class="ti-settings"></i><a href="manager/setting.jsp">Manager Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Loan Management</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-list"></i><a href="job/status.jsp">Loan List</a></li>
                            <li><i class="ti-desktop"></i><a href="job/status.jsp">Loan Requests</a></li>
							<li><i class="ti-panel"></i><a href="job/status.jsp">Loan Status</a></li>
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
                    <a class="navbar-brand" href="./"><img src="assets/img/logo3.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                        </a>
                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                            <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                            <a class="nav-link" href="commands/logout.jsp"><i class="fa fa-power -off"></i>Logout</a>
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
                                    	<h4 class="box-title text-color">Dashboard - User List <%=session.getAttribute("id")%></h4>
                                	</div>
                                		<div class="card-body--">
                                    		<div class="table-stats order-table ov-h">
                                        		<table class="table">
                                            		<thead>
                                                		<tr>
                                                    		<th class="serial">ID</th>
                                                    		<th class="avatar">Avatar</th>
                                                    		<th>Username</th>
                                                    		<th>Password</th>
                                                    		<th>Email</th>
                                                		</tr>
                                           			</thead>
                                           				<c:forEach items="${list}" var="u">
                                            		<tbody>
                                            			<tr>
                                            				<td>${u.getId()}</td>
                                            				<td>Avatar</td>
                                            				<td>${u.getUsername()}</td>
                                            				<td>${u.getPassword()}</td>
                                            				<td><a class="text-color" href="mailto:${u.getEmail()}">${u.getEmail()}</a></td>
                                            			</tr>
                                            		</tbody>
                                            			</c:forEach>
                                        		</table>
                                    		</div> <!-- /.table-stats -->
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
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/jquery.matchHeight.min.js"></script>
    <script src="../assets/js/main.js"></script>
</body>