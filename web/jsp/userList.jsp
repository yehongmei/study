<%@ page import="java.util.List" %>
<%@ page import="entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>用户管理</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="../css/tableList.css" />
    <link rel="stylesheet" href="../resource/bootstrap-3.3.7/dist/css/bootstrap.css">
    <script src="../resource/jquery-3.2.0.js"></script>
    <script src="../resource/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="../js/addAndDeleteUser.js"></script>
    <script src="../js/fuzzySearch.js"></script>
</head>
<body>
<%List<User> allUser=(List<User>)request.getAttribute("selectAllUser");%>
<div class="all_content">
    <header>
        用户管理 >> 查询用户信息
    </header>
    <div class="whole">
        <div class="title">搜索查询</div>
        <span>姓名：</span><input type="text" placeholder="请输入查询关键字" class="txt" id="username">&nbsp;&nbsp;
        <button  type="submit" class="label label-info" id="fuzzySearch"><sapn class="glyphicon glyphicon-search"></sapn></button>
        <a target="_self" href="../jsp/addUser.jsp"><button  type="submit" class="label label-info"><sapn class="glyphicon glyphicon-plus"></sapn></button></a>
    </div>
    <div class="main">
        <table id="cs_table" border-color="blue" class="data-table">
            <thead>
            <tr class="head">
                <td>序号</td>
                <td>姓名</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody id="group_one">
            <%for(int i=0;i<allUser.size();i++){
              User user=allUser.get(i);

            %>
            <tr>
                <td><%=user.getUser_id()%></td>
                <td><%=user.getUsername()%></td>
                <%if(allUser.get(i).getStatus()==-1){%>
                <td>激活</td>
                <%}else{%>
                <td>禁用</td>
                <%}%>
                <td>
                    &nbsp;&nbsp;<button class="label label-default ">修改</button>&nbsp;
                    <button  class="label label-danger delete_User"  onclick="delete_User_click(<%=user.getUser_id()%>)">删除</button>
                </td>
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
    </div>
</div>
</body>
</html>