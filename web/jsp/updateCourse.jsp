<%@ page import="entities.Course" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head lang="en">
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>修改课程</title>
    <link rel="stylesheet" href="../css/operationTable.css">
    <script src="resource/jquery-3.2.0.js"></script>
    <script src="js/addAndDeleteCourse.js"></script>
</head>
<body>
<%Course course=(Course)request.getAttribute("selectCourse");%>
<div class="addTable">
    <div class="infobox userbox">
        <div class="infoname">修改课程</div>
        <table>
            <tr>
                <td class="tabletitle">课程名称</td>
                <td><input type="text" id="course_name" name="course_name" value="<%=course.getCourse_name()%>"></td>
            </tr>
            <tr>
                <td class="tabletitle">课程代码</td>
                <td><input type="text" id="course_code" name="course_code" value="<%=course.getCourse_code()%>"></td>
            </tr>
        </table>
    </div>
    <input type="submit" value="保存"  onclick="update_Course_click(<%=course.getCourse_id()%>)">&nbsp;&nbsp;&nbsp;&nbsp;<a href="/selectAllCourse">返回列表</a>
</div>
</body>
</html>
