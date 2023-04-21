<%@ page import="model_1.User" %>
<%@ page import="model_1.FakeDao" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String httpMethod = request.getMethod();
    if (httpMethod.equals("POST")) {
        response.setContentType("text/html; charset=utf-8");
        PrintWriter pw = response.getWriter();
        pw.println("잘못된 요청입니다");
        return;
    }
    User u1 = new FakeDao().userData();
%>
<html>
<head>
    <title>Model 1</title>
</head>
<body>
<h1>유저</h1>
<hr/>
<h3>번호 : <%=u1.getId()%>
</h3>
<h3>유저명 : <%=u1.getUsername()%>
</h3>
<h3>비밀번호 : <%=u1.getPassword()%>
</h3>
</body>
</html>
