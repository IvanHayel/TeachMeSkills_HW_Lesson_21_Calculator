<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error page</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/error.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/calculator-icon.png">
</head>
<body>
<h1>404 Error Page</h1>
<section class="error-container">
    <span class="four"><span class="screen-reader-text">4</span></span>
    <span class="zero"><span class="screen-reader-text">0</span></span>
    <span class="four"><span class="screen-reader-text">4</span></span>
</section>
<div class="link-container">
    <a href="${pageContext.request.contextPath}" class="more-link">GO HOME</a>
</div>
</body>
</html>
