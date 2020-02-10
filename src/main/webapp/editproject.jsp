<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Project</title>
</head>
<body>

<div align="center">
    <h1>Edit Project</h1>
    <form action="/EditProject" method="post">
        <table style="with: 80%">
            <tr>
                <td>Project Name</td>
                <td><input type="text" name="Name" value=<%request.getParameter("name");%>></td>
            </tr>
            <tr>
                <td>Deadline</td>
                <td><input type="text" name="Deadline" value=<%request.getParameter("deadline");%>/></td>
            </tr>
            <tr>
                <td>Type</td>
                <td><input type="text" name="Type" value=<%request.getParameter("type");%>/></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="Description" value=<%request.getParameter("description");%>/></td>
            </tr>
        </table>
        <input type="submit" value="Edit"/>

        <a href="/home"> Cancel </a>

    </form>
</div>

</body>
</html>
