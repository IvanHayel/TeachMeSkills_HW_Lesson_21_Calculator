<%@ page import="java.util.StringJoiner" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/index.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/calculator-icon.png">
</head>
<body>

<%
    StringJoiner joiner = new StringJoiner(" = ");
    String expression = request.getParameter("expression");
    String expressionResult = (String) request.getAttribute("expression-result");
    if (expressionResult != null)
        joiner.add(expression).add(expressionResult);
    else
        joiner.add("");
%>

<form action="evaluate" method="post">
    <div class="result">
        <h1> <%= joiner.toString() %> </h1>
    </div>
    <div class="form-field">
        <input type="text" name="expression" placeholder="EXPRESSION HERE" required/>
    </div>
    <div class="form-field">
        <button type="submit">Evaluate</button>
    </div>
</form>

</body>
</html>
