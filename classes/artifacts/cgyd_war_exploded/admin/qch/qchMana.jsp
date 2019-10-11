<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup_shuaxin.js"></script>
		
        <script language="javascript">
           function qchDel(id)
           {
                var url="<%=path %>/qchDel.action?id="+id;
                var pop=new Popup({ contentType:1,isReloadOnClose:false,width:200,height:120});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","操作窗口");
	            pop.build();
	            pop.show();
           }
           function qchEditPre(id)
           {
                var url="<%=path %>/qchEditPre.action?id="+id;
                window.location.href=url;
           }
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }	
		   
		   function qchAdd()
           {
              var url="<%=path %>/admin/qch/qchAdd.jsp";
              window.location.href=url;
           }
           
           function qchPinglun(id)
	       {
	            var url="<%=path %>/pinglunMana.action?qchId="+id;
	            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:650,height:450});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","评论管理");
	            pop.build();
	            pop.show();
	       }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#86C1FF" align="center" style="margin-top:8px">
				<tr bgcolor="#c0ebf3">
					<td height="14" colspan="7" background="<%=path %>/img/tbg.gif">&nbsp;球馆管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">球馆类型</td>
					<td width="10%">球馆编号</td>
					<td width="10%">球馆面积</td>
					<td width="30%">球馆介绍</td>
					<td width="10%">球馆图片</td>
					<td width="7%">预订费(一天)</td>
					<td width="13%">操作</td>
		        </tr>	
				<s:iterator value="#request.qchList" id="qch">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#qch.catelog.catelogName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#qch.qcbh"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#qch.area"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#qch.jieshao" escape="false"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <div onmouseover = "over('<%=path %>/<s:property value="#qch.fujian"/>')" onmouseout = "out()" style="cursor:hand;">
						   球馆图片
					   </div>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#qch.qianshu"/>
					</td>
					<td  bgcolor="#FFFFFF" align="center" >
						<a style="color: red" href="#" onclick="qchDel(<s:property value="#qch.id"/>)" class="pn-loperator">删除</a>
						
						<a style="color: red" href="#" onclick="qchEditPre(<s:property value="#qch.id"/>)" class="pn-loperator">编辑</a>
						
						<a style="color: red" href="#" onclick="qchPinglun(<s:property value="#qch.id"/>)" class="pn-loperator">评论管理</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			<div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="80" width="80"></TD>
				</TR>
			</TABLE>
			</div>
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			      <input type="button" value="添加球馆" style="width: 80px;" onclick="qchAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
