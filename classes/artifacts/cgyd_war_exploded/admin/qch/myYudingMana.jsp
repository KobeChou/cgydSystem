<%--- 
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
           function yudingDel(id)
           {
                var url="<%=path %>/yudingDel.action?id="+id;
                var pop=new Popup({ contentType:1,isReloadOnClose:false,width:200,height:120});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","操作窗口");
	            pop.build();
	            pop.show();
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
					<td width="10%">预订天数</td>
					<td width="10%">会员</td>
					<td width="10%">联系方式</td>
					<td width="10%">预订时间</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.yudingList" id="yuding">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#yuding.qch.qcbh"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#yuding.tianshu"/>
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
					<td  bgcolor="#FFFFFF" align="center" >
						<a style="color: red" href="#" onclick="yudingDel(<s:property value="#yuding.id"/>)" class="pn-loperator">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
	
</html>


--%>


<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="This is my page"/>

    <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css"/>
    <script type="text/javascript" src="<%=path %>/js/popup_shuaxin.js"></script>

    <script language="javascript">
        function yudingDel(id) {
            var url = "<%=path %>/yudingDel.action?id=" + id;
            var pop = new Popup({contentType: 1, isReloadOnClose: false, width: 200, height: 120});
            pop.setContent("contentUrl", url);
            pop.setContent("title", "操作窗口");
            pop.build();
            pop.show();
        }

        function payOrder(id) {
            <c:if test="${sessionScope.user==null}">
            alert("请先登录");
            return;
            </c:if>
            window.location.href="<%=path %>/payAction.action?yuDingID="+ id;
        }
    </script>

    <link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet"/>

    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script type="text/javascript">
    </script>
</head>

<body>
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
<div class="page_row">
    <div class="page_main_msg left">
        <!--新入博主  -->
        <div class="left_row">
            <div class="list pic_news">
                <div class="list_bar">我预订的球馆</div>
                <div id="tw" class="list_content">
                    <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#86C1FF" align="center"
                           style="margin-top:8px">
                        <tr bgcolor="#c0ebf3">
                            <td height="14" colspan="5" background="<%=path %>/img/tbg.gif">&nbsp;我预订的球馆管理&nbsp;</td>
                        </tr>
                        <tr align="center" bgcolor="#FAFAF1" height="22">
                            <td width="10%">球馆编号</td>
                            <td width="20%">联系方式</td>
                            <td width="20%">预订时间</td>
                            <td width="20%">核验码</td>
                            <td width="10%">进度</td>
                            <td width="20%">操作</td>
                        </tr>
                        <s:iterator value="#request.yudingList" id="yuding">
                            <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';"
                                onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
                                <td bgcolor="#FFFFFF" align="center">
                                    <s:property value="#yuding.qch.qcbh"/>
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
                                <td bgcolor="#FFFFFF" align="center">
                                    <a style="color: red" href="#" onclick="yudingDel(<s:property value="#yuding.id"/>)"
                                       class="pn-loperator">取消预订</a>
                                    <s:if test='#yuding.paystatus=="0"'>
                                        <a style="color: red" href="#" onclick="payOrder(<s:property value="#yuding.id"/>)">支付订单</a>
                                    </s:if>
                                    <s:else>
                                        <a style="color: red" href="#">已支付</a>
                                    </s:else>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>
                </div>
            </div>
        </div>
        <!-- 新入博主 -->
    </div>

    <!-- 右边的用户登录。留言。投票 -->
    <div class="page_other_msg right">
        <div class="left_row">
            <div class="list">
                <div class="list_bar">用户登录</div>
                <div class="list_content">
                    <div id="div">
                        <jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
                    </div>
                </div>
            </div>
        </div>
        <div class="left_row">
            <div class="list">
                <div class="list_bar">网站公告</div>
                <div class="list_content">
                    <div id="div">
                        <s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
                    </div>
                </div>
            </div>
        </div>
        <div class="left_row">
            <div class="list">
                <div class="list_bar">网站日历表</div>
                <div class="list_content">
                    <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
                </div>
            </div>
        </div>
    </div>
    <!-- 右边的用户登录。留言。投票 -->
</div>

<div class="foot">
    <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
</div>
</body>
</html>






