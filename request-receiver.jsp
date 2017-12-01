<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//获取请求数据
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("user");
	String pwd = request.getParameter("pwd");
	String[] hobby = request.getParameterValues("likes");
	if("hzf".equals(name) && "1612190106".equals(pwd)) {
		request.setAttribute("sex", "男");
		request.getRequestDispatcher("request-successful.jsp").forward(request,response);
		
	}else{
		out.println("error");
	}
%>