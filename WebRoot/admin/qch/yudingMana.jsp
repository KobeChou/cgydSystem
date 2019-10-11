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
		<script type="text/javascript" src="<%=path %>/js/jquery-1.11.2.min.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script type="text/javascript" src="<%=path %>/js/popup_shuaxin.js"></script>
		
        <script language="javascript">
           function yudingDel(id)
           {
                var url="<%=path %>/yudingDel.action?id="+id;
                var pop=new Popup({ contentType:1,isReloadOnClose:false,width:200,height:120});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","操作窗口");
	            pop.build();
	            pop.show();
           }

           function heyan(id) {
               $.ajax({
				   type:'GET',
				   url:'<%=path %>/heyan.action?id='+id,
				   success:function (callback) {
					   if(callback=="success"){
					       alert("核验成功");
					   }else if(callback =="nopay"){
					       alert("未支付，无法核验");
					   }else{
					       alert("核验失败");
					   }
                   }
			   })
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#86C1FF" align="center" style="margin-top:8px">
				<tr bgcolor="#c0ebf3">
					<td height="14" colspan="6" background="<%=path %>/img/tbg.gif">&nbsp;预订管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">球馆编号</td>
					<td width="10%">会员</td>
					<td width="10%">联系方式</td>
					<td width="10%">预订时间</td>
					<td width="10%">核验码</td>
					<td width="10%">进度</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.yudingList" id="yuding">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.qch.qcbh"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.user.userName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.yudingzheTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.shijian"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.hycode"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:if test='#yuding.jingdu=="0"'>
							未开始
						</s:if>
						<s:else>
							已完成
						</s:else>
					</td>
					<td  bgcolor="#FFFFFF" align="center" >
						<a style="color: red" href="#" onclick="yudingDel(<s:property value="#yuding.id"/>)" class="pn-loperator">删除</a>
						<a style="color: red" href="#" onclick="heyan(<s:property value="#yuding.id"/>)" class="pn-loperator">核验</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
