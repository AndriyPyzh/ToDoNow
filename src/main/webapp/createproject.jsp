<%--
  Created by IntelliJ IDEA.
  User: andriypyzh
  Date: 07.02.2020
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Project Page</title>
</head>
<body>

<div align="center">
    <h1>Add Project</h1>
    <form action="/CreateProject" method="post">
        <table style="with: 80%">
            <tr>
                <td>Project Name</td>
                <td><input type="text" name="Name"/></td>
            </tr>
            <tr>
                <td>Deadline</td>
                <td><input type="text" name="Deadline"/></td>
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
        <a href="/home"> Cancel </a>

    </form>
</div>

</body>
</html>
