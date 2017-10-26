<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>批次管理</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="../css/tableList.css" />
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
</head>
<body>
<div class="all_content">
    <header>
        学习记录>> 查询学习记录
    </header>
    <form class="main" method="post" action="/selectAllUser">
        <table id="cs_table" border-color="blue" class="data-table">
            <thead>
            <tr class="head">
                <td>批次名称</td>
                <td>开始时间</td>
                <td>结束时间</td>
                <td>课件进度</td>
                <td>课件完成时长</td>
            </tr>
            </thead>
            <tbody id="group_one">
            <tr>
                <td>2016-2017-1</td>
                <td>2017/10/7 16:45 </td>
                <td>2017/10/7 18:45</td>
                <td>0：06</td>
                <td>3：13</td>
            </tr>
            <tr>
                <td>2016-2017-2</td>
                <td>2017/10/7 16:45 </td>
                <td>2017/10/7 18:45</td>
                <td>0：03</td>
                <td>3：13</td>
            </tr>
            </tbody>
        </table>
        <nav aria-label="Page navigation" class="paging">
            <ul class="pagination">
                <li>
                    <a href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </form>
</div>
</body>
</html>