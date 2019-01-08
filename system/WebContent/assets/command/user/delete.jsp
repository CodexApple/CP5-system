<%@page import="me.sysdev.dao.userdao"%>
	<jsp:useBean id="u" class="me.sysdev.tables.user"></jsp:useBean>
	<jsp:setProperty property="*" name="u"/>

<%
	userdao.delete(u);
response.sendRedirect("../../../admin/user/setting.jsp");
%>