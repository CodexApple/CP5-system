<%@page import="me.sysdev.dao.*"%>
<%@page import="me.sysdev.tables.user" %>

	<jsp:useBean id="u" class="me.sysdev.tables.user"></jsp:useBean>eBean>
	<jsp:setProperty property="*" name="u"/>

<%
	int i=userdao.save(u);
	response.sendRedirect("../../../admin/user/setting.jsp");
%>