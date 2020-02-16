<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Project Page</title>
</head>
<body>

<div align="center">
    <h1>Add Project</h1>
    <form action="/todonow/CreateProject" method="post">
        <table style="with: 80%">
            <tr>
                <td>Project Name</td>
                <td><input type="text" name="Name"/></td>
            </tr>
            <tr>
                <td>Deadline</td>
                <td><input type="date" id="start" name="Deadline"
                            value=<%= new java.sql.Date(System.currentTimeMillis()) %>></td>
            </tr>
            <tr>
                <td>Type</td>
                <td><input type="text" name="Type"/></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="Description"/></td>
            </tr>
        </table>
        <input type="submit" value="Create"/>
        <a href="/todonow/home"> Cancel </a>

    </form>
</div>

<jsp:include page="../elements/alertBox.jsp"></jsp:include>
</body>
</html>
