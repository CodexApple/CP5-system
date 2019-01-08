<%@page import="me.sysdev.dao.userdao"%>
<%@page import="me.sysdev.tables.user" %>

	<jsp:useBean id="u" class="me.sysdev.tables.user"></jsp:useBean>
	<jsp:setProperty property="*" name="u"/>

<%
	String result=userdao.login(u);

	if(result.equals("true")&&"admin".equals(u.getStatus())){
		session.setAttribute("username", u.getUsername());
		session.setAttribute("id", u.getId());
		response.sendRedirect("../../admin/index.jsp");
	}
	
	else if(result.equals("true")&&"employee".equals(u.getStatus())){
		session.setAttribute("username", u.getUsername());
		session.setAttribute("id", u.getId());
		response.sendRedirect("../../admin/index.jsp");
	}
	
	else if(result.equals("true")&&"manager".equals(u.getStatus())){
		session.setAttribute("username", u.getUsername());
		session.setAttribute("id", u.getId());
		response.sendRedirect("../../admin/index.jsp");
	}
	
	else if(result.equals("false")){
		response.sendRedirect("../../login.jsp?status=false");
	}
	
	else if(result.equals("error")){
		response.sendRedirect("../../login.jsp?status=error");
	}
	
%>