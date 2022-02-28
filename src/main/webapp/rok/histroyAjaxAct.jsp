<%@page import="java.util.Iterator"%>
<%@page import="domain.ExamVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.ExamDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String q = "일";//request.getParameter("q");
ExamDAO dao = new ExamDAO();
List<ExamVO> list = dao.read(q); 
Iterator<ExamVO> it = list.iterator();
while(it.hasNext()) {
	ExamVO vo = it.next();
	out.println(vo.getNum());
	out.println(vo.getQs());
	out.println(vo.getAn());
}

%>
</body>
</html>