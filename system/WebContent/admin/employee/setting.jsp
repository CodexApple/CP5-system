<%@ page import="me.sysdev.tables.*, me.sysdev.dao.*, me.sysdev.connect.*,java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%List<employee> list=employeedao.getAllRecords();
	request.setAttribute("list",list);%>
  
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Online Human Resource Information System</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="stylesheet" href="../../assets/css/normalize.css">
    <link rel="stylesheet" href="../../assets/css/bootstrap-min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="../../assets/css/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="../../assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="../../assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="../../assets/css/style.css">
    <link rel="stylesheet" href="../../assets/css/util.css">
    <link href="../../assets/css/chartist.min.css" rel="stylesheet">
    <link href="../../assets/css/jqvmap.min.css" rel="stylesheet">
    <link href="../../assets/css/emain.css" rel="stylesheet">
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
                        	<li><i class="ti-eye"></i><a href="list.jsp">User List</a></li>
                            <li><i class="ti-settings"></i><a href="setting.jsp">User Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Employees</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="../employee/list.jsp">Employee List</a></li>
                            <li><i class="ti-settings"></i><a href="../employee/settings.jsp">Employee Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Managers</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-eye"></i><a href="../manager/list.jsp">Manager List</a></li>
                            <li><i class="ti-settings"></i><a href="../manager/setting.jsp">Manager Settings</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon ti-user"></i>Loan Management</a>
                        <ul class="sub-menu children dropdown-menu">
                        	<li><i class="ti-list"></i><a href="../job/list.jsp">Loan List</a></li>
                            <li><i class="ti-desktop"></i><a href="../job/request.jsp">Loan Requests</a></li>
							<li><i class="ti-panel"></i><a href="../job/status.jsp">Loan Status</a></li>
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
                    <a class="navbar-brand" href="../index.jsp"><img src="../../assets/img/logo3.png" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./"><img src="../../img/logo2.png" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="../../assets/img/admin.jpg" alt="User Avatar">
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
                                    	<h4 class="box-title text-color">Employee List
                                    	<button onclick="document.getElementById('id01').style.display='block'" style="width:auto; border:none; background:none; color:White; position:relative; left:75%;">Add Employee</button></h4>
                 							<div id="id01" class="modal">
				 								<form class="modal-content animate" action="commands/register.jsp" method="post">
				 									<div class="imgcontainer p-b-10 p-l-10 text-color2">Employee Form</div>
														<div class="container-2">
															<label class="text-color2">First Name:</label><br />
																<input type="text" placeholder="Enter your First Name" name="fname" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Last Name:</label><br />
																<input type="text" placeholder="Enter your Last Name" name="lname" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Middle Name:</label><br />
																<input type="text" placeholder="Enter Your Middle Initial" name="mname" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Gender:</label><br />
																<input type="text" placeholder="Select your Gender" name="gender" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Birth Place:</label><br />
																<input type="text" placeholder="Enter your Birth Place" name="birplace" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Birth Date:</label><br />
																<input type="text" placeholder="Enter your Birth Date" name="birdate" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Age:</label><br />
																<input type="text" placeholder="Enter your Age" name="age" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Address:</label><br />
																<input type="text" placeholder="Enter your Address" name="address" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Telephone:</label><br />
																<input type="text" placeholder="Enter your Telephone No." name="telephone" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Cellphone:</label><br />
																<input type="text" placeholder="Enter your Cellphone No." name="cellphone" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Country:</label><br />
																<input type="text" placeholder="Enter your Country" name="country" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">City:</label><br />
																<input type="text" placeholder="Enter your City" name="city" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
															<label class="text-color2">Position:</label><br />
																<input type="text" placeholder="Enter your Position" name="position" required style="width: 16em; background:transparent; color:white; border:none; border-bottom:3px black solid"><br /><br />
														<div class="center-class">
															<button type="submit" class="container-3 text-color2">Add Employee</button>
														</div>
													</div>
												</form>
											</div>
                                	</div>
                                		<div class="card-body--">
                                    		<div class="table-stats order-table ov-h">
                                        		<table class="table">
                                            		<thead>
                                                		<tr>
                                                    		<th class="serial">ID</th>
                                                    		<th>Full Name</th>
                                                    		<th>Telephone Number</th>
                                                    		<th>Cellphone Number</th>
                                                    		<th>Country</th>
                                                    		<th>Age</th>
                                                    		<th>Position</th>
                                                    		<th>Profile</th>
                                                		</tr>
                                           			</thead>
                                           				<c:forEach items="${list}" var="u">
                                            		<tbody>
                                            			<tr>
                                            				<td>${u.getId()}</td>
                                            				<td>${u.getLname()}&nbsp;${u.getFname()}&nbsp;${u.getMname()}</td>
                                            				<td>${u.getTelephone()}</td>
                                            				<td>${u.getCellphone()}</td>
                                            				<td>${u.getCountry()}</td>
                                            				<td>${u.getAge()}</td>
                                            				<td>${u.getPosition()}</td>
                                            				<td><a class="text-color" href="../../assets/setting/e_editform.jsp?id=${u.getId()}">Profile</a>
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
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="../../assets/js/popper.min.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/jquery.matchHeight.min.js"></script>
    <script src="../../assets/js/main.js"></script>
    <script src="../../assets/js/modal.js"></script>
</body>
</html>