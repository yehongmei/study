<%@ page import="java.util.List" %>
<%@ page import="entities.Batch_information" %>
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
<%List<Batch_information> allBatch=(List<Batch_information>)request.getAttribute("allBatchBatch");%>
<div class="all_content">
    <header>
        批次管理 >> 查询批次信息
    </header>
    <form class="main" method="post" action="/selectAllUser">
        <table id="cs_table" border-color="blue" class="data-table">
            <thead>
            <tr class="head">
                <td>批次名称</td>
                <td>开始时间</td>
                <td>结束时间</td>
                <td>考试资格学分</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody id="group_one">
            <%for(int i=0;i<allBatch.size();i++){
                Batch_information  batch_information=allBatch.get(i);
            %>
            <tr>
                <td><%=batch_information.getBatch_innformation_id()%></td>
                <td><%=batch_information.getStarttime()%></td>
                <td><%=batch_information.getEndtime()%></td>
                <td><%=batch_information.getScore()%></td>
                <td><a href="update.html">修改&nbsp;&nbsp;&nbsp;</a><a href="update.html">明细&nbsp;&nbsp;&nbsp;</a><a href="update.html">删除</a></td>
            </tr>
            <%}%>

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
