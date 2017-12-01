<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("user");
	String pwd = request.getParameter("pwd");
	if("hzf".equals(name) && "1612190106".equals(pwd)) {
		//将用户名保存到当前会话对象中
		session.setMaxInactiveInterval(1000*60*20);//设置session的有效时间
		session.setAttribute("name", name);
		response.sendRedirect("session_success.jsp");
	}
	else {
		response.sendRedirect("erros.jsp");
	}
%>