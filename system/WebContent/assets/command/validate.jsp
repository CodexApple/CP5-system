<%
	String username=(String)session.getAttribute("username");

		//Redirect Users if Logged In
        if(username!=null){
            response.sendRedirect("home.jsp");
        }
 
        String status=request.getParameter("status");
        	if(status!=null) {
            	if(status.equals("false")) {
                	out.print("Incorrect login details!");
            	}
            	else {
                	out.print("Some error occurred!");
            	}
        }
%>