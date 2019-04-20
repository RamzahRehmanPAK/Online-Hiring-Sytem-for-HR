<%--
  Created by IntelliJ IDEA.
  User: Ramzah Rehman
  Date: 4/19/2017
  Time: 6:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login Error</title>
</head>
<body>
<c:url var="url" value="/index.jsp"/>
<h2>Invalid user name or password.</h2>

<p>Please enter a user name or password that is authorized to access this
    application. For this application, this means a user that has been created in the
    <code>file</code> realm and has been assigned to the <em>group</em> of
    <code>TutorialUser</code>.  Click here to <a href="${url}">Try Again</a></p>
</body>
</html>

