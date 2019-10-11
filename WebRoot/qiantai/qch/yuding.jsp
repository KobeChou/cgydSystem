<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base target="_self"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-datepicker3.min.css" />
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=path %>/js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/bootstrap-datepicker.zh-CN.min.js"></script>


    <script language="javascript">

    </script>
    <style type="text/css">
        .ydli {
            width: 100%;
            height: 150px;
            margin-bottom: 10px;
        }

        .ydli ul, li {
            list-style: none;
        }

        .ydli ul li {
            float: left;
            width: 90px;
            height: 35px;
            border: 1px solid gray;
            line-height: 35px;
            font-size: 13px;
            text-align: center;
            cursor: pointer;
            margin-left: 5px;
            margin-top: 5px;
        }

        .ydli ul .active {
            background-color: green;
            color: white;
        }
    </style>
</head>
<body>

</body>
</html>
<script>
    $(".ydli li").on("click", function () {
        if ($(this).hasClass("active")) {
            $(this).removeClass("active");
        } else {
            $(this).addClass("active");
        }

    })

    $(function(){
        $('.datepicker').datepicker({
            language: 'zh-CN',
            format: 'yyyy-mm-dd',
            autoclose :true
        }).on("changeDate", function(e) {
           // 查询对应时间的预定日期
        });
    })
</script>
