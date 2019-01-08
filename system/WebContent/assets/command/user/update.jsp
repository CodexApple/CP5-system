<%@page import="me.sysdev.dao.userdao"%>

	<jsp:useBean id="u" class="me.sysdev.tables.user"></jsp:useBean>eBean>
	<jsp:setProperty property="*" name="u"/>

<%
	int i=userdao.update(u);
	response.sendRedirect("../../../admin/user/setting.jsp");
%>