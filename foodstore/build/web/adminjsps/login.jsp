<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>the login page of administrator</title>

        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">    
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

    </head>

    <body align="center" bgcolor="yellow">
        <h1>login page of administrator</h1>
        <hr/>
        <p style="font-weight: 900; color: red">${msg }</p>
        <form action="<c:url value='/adminjsps/admin/index.jsp'/>" method="post">
            admin's number：<input type="text" name="adminname" value=""/><br/>
            password ：<input type="password" name="password"/><br/>
            <input type="submit" value="Enter back-stage management "/>
        </form>
    </body>
</html>
