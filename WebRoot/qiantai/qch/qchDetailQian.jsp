<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
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
		
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/bootstrap-datepicker3.min.css" />
		<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<script type="text/javascript" src="<%=path %>/js/jquery-1.11.2.min.js"></script>
		<script type="text/javascript" src="<%=path %>/js/bootstrap-datepicker.min.js"></script>
		<script type="text/javascript" src="<%=path %>/js/bootstrap-datepicker.zh-CN.min.js"></script>
		<script type="text/javascript" src="<%=path %>/js/popup_shuaxin_no.js"></script>
		<style type="text/css">
			.ydli {
				width: 100%;
				height: 90x;
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
				border:1px solid green;
			}

			.ydli ul .yyd {
				background-color: #ffb612;
				color: white;
			}
			.ydli ul .ygq{
				background-color:gray;
				color:white;
			}
		</style>
		<script type="text/javascript">

	        
	        function pinglunAll(id)
	        {
	            var url="<%=path %>/pinglunAll.action?qchId="+id;
	            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:650,height:450});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","评论");
	            pop.build();
	            pop.show();
	        }
       
	       function pinglunAdd(id)
	       {
	            var url="<%=path %>/qiantai/qch/pinglunAdd.jsp?qchId="+id;
	            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:700,height:400});
	            pop.setContent("contentUrl",url);
	            pop.setContent("title","写评论");
	            pop.build();
	            pop.show();
	       }
	       
	       function back()
	       {
	           window.history.back();
	       }
	    </script>
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		<div class="page_row">
			<div class="page_main_msg left">
			    <!--新入博主  -->
			    <div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							球馆详细介绍
						</div>
						<div id="tw" class="list_content">
							<div>
								<div class="col-md-5" style="margin-top:10px;">
									<div class="input-group date datepicker">
										<input type="text" class="form-control" value="${requestScope.shijian}">
										<div class="input-group-addon">
											<span class="glyphicon glyphicon-th "></span>
										</div>
									</div>
								</div>
								<div class="ydli" style="width:60%;display:block;float:left;margin-top:10px;">
									<ul>
										<li name="time1" class="${requestScope.ydstatus.time1} ">9:00-10:00</li>
										<li name="time2" class="${requestScope.ydstatus.time2}">10:00-11:00</li>
										<li name="time3" class="${requestScope.ydstatus.time3}">11:00-12:00</li>
										<li name="time4" class="${requestScope.ydstatus.time4}">12:00-13:00</li>
										<li name="time5" class="${requestScope.ydstatus.time5}">13:00-14:00</li>
										<li name="time6" class="${requestScope.ydstatus.time6}">14:00-15:00</li>
										<li name="time7" class="${requestScope.ydstatus.time7}">15:00-16:00</li>
										<li name="time8" class="${requestScope.ydstatus.time8}">16:00-17:00</li>
										<li name="time9" class="${requestScope.ydstatus.time9}">17:00-18:00</li>
										<li name="time10" class="${requestScope.ydstatus.time10}">18:00-19:00</li>
										<li name="time11" class="${requestScope.ydstatus.time11}">19:00-20:00</li>
										<li name="time12" class="${requestScope.ydstatus.time12}">20:00-21:00</li>
									</ul>
								</div>
								<form action="<%=path %>/yudingAdd.action" name="form1" method="post">
									<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
										<tr>
											<td align="left" style="width: 12%;">
												联系方式：
												<input type="text" class="yudingzheTel" name="yudingzheTel"/>
											</td>
										</tr>
									</table>
								</form>
								<script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
							</div>
							<table width="100%" border="0" cellpadding="9" cellspacing="9">
							    <tr>
							       <td align="left">照片：<img src="<%=path %>${requestScope.qch.fujian }" width="180" height="150"/></td>
							    </tr>
							    <tr>
							       <td align="left">球馆编号：${requestScope.qch.qcbh }</td>
							    </tr>
							    <tr>
							       <td align="left">球馆面积：${requestScope.qch.area }</td>
							    </tr>
							    <tr>
							       <td align="left">介绍：${requestScope.qch.jieshao }</td>
							    </tr>
							    <tr>
							       <td align="left">预订费(一天)：${requestScope.qch.qianshu }</td>
							    </tr>
							    <tr>
								   <td align="left">
								       <a href="#" style="color: red" onclick="pinglunAll(${requestScope.qch.id })">球馆评论</a>
								       &nbsp;
								       <a href="#" style="color: red" onclick="pinglunAdd(${requestScope.qch.id })">我要评论</a>
								   </td>
								</tr>

							    <tr>
							       <td align="center">
							           <a href="#" onclick="yuding(${requestScope.qch.id })"><img src="<%=path %>/img/yuding.jpg" width="80" height="35"/></a>
							           &nbsp;&nbsp;
							           <a href="#" onclick="back();"><img src="<%=path %>/img/123.jpg" width="80" height="35"/></a>
                                   </td>
							    </tr>
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
	<script type="text/javascript">
        var timejson = {};
        var shijian = $(".form-control").val();
        $(".ydli li").on("click", function () {
            var name = $(this).attr("name");
            if ($(this).hasClass("yyd") || $(this).hasClass("ygq")) {
                return;
            }
            if ($(this).hasClass("active")) {
                delete timejson[name];
                $(this).removeClass("active");
            } else {
                timejson[name]=$(this).text();
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
                shijian = $(".form-control").val();
				window.location.href="qchDetailQian.action?shijian="+ shijian + "&id=${requestScope.qch.id }" ;
            });
        })



        function yuding(qchId)
        {
			if($(".yudingzheTel").val()==""){
                alert("请输入联系方式");
                return;
			}
            var payload={};
            payload.ydsj= JSON.stringify(timejson);
            payload.yudingzheTel = $(".yudingzheTel").val();
            payload.qchId= qchId;
			payload.shijian=shijian;
            <c:if test="${sessionScope.user==null}">
            alert("请先登录");
            return;
            </c:if>
            if( $.isEmptyObject(timejson)){
                alert("请选择预定的时间段");
                return;
            }
			$.ajax({
				type:'post',
				url:"<%=path %>/yudingAdd.action",
				data:payload,
				success:function (callback) {
					if(callback == "success"){
					    alert("恭喜你预定成功");
					}else if(callback == "failed1"){
                        alert("不能在同一个时间段预定多个场地");
					}else if(callback =="failed0"){
					    alert("不能预定30天之后的时间段");
					}else if(callback == "failed2"){
					    alert("由于您在规定时间没有过来，今天不能再进行预定");
					}else{
					    alert("系统错误");
					}
                    window.location.reload();
                }
			})
        }
	</script>
	</body>
</html>
