<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>进入学习</title>
</head>
<style>
    video{
        width: 600px;
        height: 500px;
        margin-left: 140px;
    }
</style>
<body>
       <video  controls>
           <source src="<%=request.getParameter("curl")%>" type="video/mp4">
       </video>
		<a href="learnrecord.jsp" >暂停</a>
	</span>
       </div>
</body>
</html>
