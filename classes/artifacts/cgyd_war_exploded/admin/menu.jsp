<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'menu.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<LINK href="theme/css/0.css" type=text/css rel=stylesheet>
	<style type="text/css">

		
		
		
		
		
td {font-size: 9pt;line-height: 1.5;}
body {font-size: 9pt;line-height: 1.5;}
a:link { font-size: 9pt; color: #000000; text-decoration: none }
a:visited{ font-size: 9pt; color: #000000; text-decoration: none }
a:hover {font-size: 9pt;color: red}
.topitem{ cursor: hand; 
    background-image:url(<%=request.getContextPath()%>/theme/img/mtbg1.gif);
    height:24px;
    width:98%;
    border-right: 1px solid #2FA1DB;
    border-left: 1px solid #2FA1DB;
    clear:left
}
.itemsct{
  border-right: 1px solid #2FA1DB;
  border-left: 1px solid #2FA1DB;
  background-color:#EEFAFE;
  margin-bottom:6px;
  width:98%;
}
.topl{ float:left;margin-left:6px;margin-right:3px; }
.topr{ padding-top:3px }
body {
  scrollbar-base-color:#8CC1FE;
  scrollbar-arrow-color:#FFFFFF;
  scrollbar-shadow-color:#6994C2
}		
		
		
		
		
		
		
		
		
		
	</style>
	<script language='javascript'>var curopenItem = '1';</script>
	<script language="javascript" type="text/javascript" src="<%=path %>/js/menu.js"></script>
	<base target="main" />
  </head>
  
  <body target="main" bgcolor="#86C1FF">
	<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
	  <tr>
	    <td style='padding-left:3px;padding-top:8px' valign="top">
		  <!-- 1 -->
		  <%--
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>修改个人密码</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/admin/index/userinfo.jsp' target='main'>修改个人密码</a> </li>
	          </ul>
	        </dd>
	      </dl>
	       --%>
<div onClick='showHide("items1")' class='topitem' align='left'> 
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>修改个人密码</div>
</div>
<div style='clear:both'></div>
<div style='display:block' id='items1' class='itemsct'> 
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/admin/index/userinfo.jsp' target='main'>修改个人密码</A></td>
  </tr>
</table>
</div> 	      
	      
	      
	      
<div onClick='showHide("items2_1")' class='topitem' align='left'> 
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>会员信息管理</div>
</div>
<div style='clear:both'></div>
<div style='display:block' id='items2_1' class='itemsct'> 
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/userMana.action' target='main'>会员信息管理</a></td>
  </tr>
</table>
</div> 	 	      
	      
	      
	      <%--
	      <dl class='bitem'>
	        <dt onClick='showHide("items2_1")'><b>会员信息管理</b></dt>
	        <dd style='display:block' class='sitem' id='items2_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/userMana.action' target='main'>会员信息管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	       --%>
	       


<div onClick='showHide("items6")' class='topitem' align='left'> 
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>球馆信息管理</div>
</div>
<div style='clear:both'></div>
<div style='display:block' id='items6' class='itemsct'> 
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/catelogMana.action' target='main'>球馆信息类型</a></td>
  </tr>
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/qchMana.action' target='main'>球馆信息管理</a></td>
  </tr>  
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/admin/qch/qchAdd.jsp' target='main'>球馆信息添加</a> </td>
  </tr>   
</table>
</div>      
	       
	       
	       <%--
	      <dl class='bitem'>
	        <dt onClick='showHide("items2_1")'><b>球馆信息管理</b></dt>
	        <dd style='display:block' class='sitem' id='items2_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/catelogMana.action' target='main'>球馆信息类型</a> </li>
	            <li><a href='<%=path %>/qchMana.action' target='main'>球馆信息管理</a> </li>
	            <li><a href='<%=path %>/admin/qch/qchAdd.jsp' target='main'>球馆信息添加</a> </li>
	          </ul>
	        </dd>
	      </dl>
	       --%>
	      
	      
<div onClick='showHide("items2_11")' class='topitem' align='left'> 
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>预订信息管理</div>
</div>
<div style='clear:both'></div>
<div style='display:block' id='items2_11' class='itemsct'> 
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/yudingMana.action' target='main'>预订信息管理</a></td>
  </tr>
</table>
</div> 	 	      
	      <%--
	      <dl class='bitem'>
	        <dt onClick='showHide("items2_1")'><b>预订信息管理</b></dt>
	        <dd style='display:block' class='sitem' id='items2_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/yudingMana.action' target='main'>预订信息管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	       --%>
	       
	       
<%--<div onClick='showHide("items2_111")' class='topitem' align='left'>
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>预订信息登记</div>
</div>
<div style='clear:both'></div>--%>
<%--<div style='display:block' id='items2_111' class='itemsct'>
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/zlxxMana.action' target='main'>预订信息登记</a></td>
  </tr>
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/admin/zlxx/zlxxAdd.jsp' target='main'>预订信息添加</a> </td>
  </tr>    
</table>
</div> 	--%>
	
	
	
<div onClick='showHide("items2_112")' class='topitem' align='left'> 
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>公告信息管理</div>
</div>
<div style='clear:both'></div>
<div style='display:block' id='items2_112' class='itemsct'> 
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/admin/gonggao/gonggaoAdd.jsp' target='main'>公告信息添加</a></td>
  </tr>
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/gonggaoMana.action' target='main'>公告信息管理</a> </td>
  </tr>    
</table>
</div> 			
	       
<div onClick='showHide("items2_114")' class='topitem' align='left'> 
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>留言板---管理</div>
</div>
<div style='clear:both'></div>
<div style='display:block' id='items2_114' class='itemsct'> 
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='<%=path %>/liuyanMana.action' target='main'>留言板---管理</a></td>
  </tr>
</table>
</div> 
<div onClick='showHide("items2_115")' class='topitem' align='left'> 
	<div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
    <div class='topr'>安全退出系统</div>
</div>
<div style='clear:both'></div>
<div style='display:block' id='items2_115' class='itemsct'> 
<table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
  <tr height="25">
    <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
    <td style="border-bottom: #2FA1DB 1px solid"><a href='#' onclick='javascript:window.parent.location="<%=path %>/login.jsp"'>安全退出系统</a></td>
  </tr>
</table>
</div>

            <div onClick='showHide("items2_116")' class='topitem' align='left'>
                <div class='topl'><img src='<%=request.getContextPath()%>/theme/img/mtimg1.gif' width='21' height='24' border='0'></div>
                <div class='topr'>系统统计</div>
            </div>
            <div style='clear:both'></div>
            <div style='display:block' id='items2_116' class='itemsct'>
                <table width="100%" border="0" align="center" cellPadding="0" cellSpacing="0">
                    <tr height="25">
                        <td style="border-bottom: #2FA1DB 1px solid;padding-left:5px;"><img src='<%=request.getContextPath()%>/theme/img/newitem.gif' width='7' height='10' alt=''/></td>
                        <td style="border-bottom: #2FA1DB 1px solid"><a  href='<%=path %>/liuyanMana.action' target='main'>统计图</a></td>
                    </tr>
                </table>
            </div>



        </td>
	  </tr>
	</table>
  </body>
</html>
