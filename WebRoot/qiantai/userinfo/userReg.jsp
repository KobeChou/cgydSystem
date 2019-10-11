<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<script type="text/javascript" src="<%=path %>/js/popup_shuaxin_no.js"></script>
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
		<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
		<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		<script type="text/javascript" src="<%=path %>/js/jquery-1.11.2.min.js"></script>


		<script language="javascript">
            function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
		    }
            
            function closeOpen()
		    {
		         window.close();
		    }
            function check2()
            {

                check_userName2(document.form2.userName.value);


            }

		    function check1()
		    {

                check_userName1(document.form1.userName.value);


		    }
            function check_userName2(s)
            {
                if(s.trim()=="")
                {
                    alert("请输入用户名");
                    return false;
                }
                else
                {
                    document.getElementById("indicator").style.display="block";
                    loginService.jiance(s.trim(),callback2)
                }
            }
		    
		    function check_userName1(s)
		    {
		        if(s.trim()=="")
		        {
		            alert("请输入用户名");
		            return false;
		        }
		        else
		        {
		           document.getElementById("indicator").style.display="block";
		           loginService.jiance(s.trim(),callback1)
		        }
		    }

            function callback2(data)
            {
                document.getElementById("indicator").style.display="none";
                if(data=="no")
                {
                    alert("用户名被占用。请重新输入");
                    document.form2.userName.value="";
                }
                if(document.form2.userName.value=="")
                {
                    alert("请输入用户名");
                    return false;
                }
                if(document.form2.userPw.value.trim()=="")
                {
                    alert("请输入密码");
                    return false;
                }
                if(document.form2.userTel.value.trim()=="")
                {
                    alert("请输入联系方式");
                    return false;
                }
                if(document.form2.userEmail.value.trim()=="")
                {
                    alert("请输入邮箱地址");
                    return false;
                }
                if(document.form2.userPw.value.length<6)
                {
                    alert("密码长度不能小于6位");
                    return false;
                }

                document.form2.submit();
            }
		    
		    function callback1(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("用户名被占用。请重新输入");
			        document.form1.userName.value="";
			    }
                if(document.form1.userName.value=="")
                {
                    alert("请输入用户名");
                    return false;
                }
                if(document.form1.userPw.value.trim()=="")
                {
                    alert("请输入密码");
                    return false;
                }
                if(document.form1.userTel.value.trim()=="")
                {
                    alert("请输入联系方式");
                    return false;
                }
                if(document.form1.userEmail.value.trim()=="")
                {
                    alert("请输入邮箱地址");
                    return false;
                }
                if(document.form1.userPw.value.length<6)
                {
                    alert("密码长度不能小于6位");
                    return false;
                }

                document.form1.submit();
			}
		    
		    
		    String.prototype.trim=function()
			{
			    return this.replace(/(^\s*)|(\s*$)/g,"");
			}

		    
        </script>
		<style type="text/css">
			.regtab{
				text-align: center;
				width: 100%;
				height:36px;
			}
			.regtab ul{
				width:170px;
				margin:0 auto;
			}
			.regtab ul,li{
				list-style: none;
			}
			.regtab ul li{
				float:left;
				width: 80px;
				height:36px;
				border: 1px solid #6C92D5;
				line-height: 36px;
				font-size: 14px;
				color:#6C92D5;
				cursor:pointer;

			}
			.regtab ul .active{
				background-color: #6C92D5;
				color:white;
				border:1px solid #6C92D5;
			}
		</style>

	</head>
	<body>
	<div class="regtab">
		<ul>
			<li  class="active">校内用户</li>
			<li>校外用户</li>
		</ul>
	</div>
	<div class="xnyh"><form action="<%=path %>/userReg.action" name="form1" method="post">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
			<tr>
				<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">
					校 内 用 户 注 册
				</th>
			</tr>
			<tr>
				<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					账号：
				</td>
				<td width="80%" bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userName" id="userName" placeholder="请输入您的学号"/>
					<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					密 码：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="password" name="userPw"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					真实姓名：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userRealname"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					身份证号：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userIDNo"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					住址：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userAddress"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					性别：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="radio" name="userSex" value="男" checked="checked"/>男
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="userSex" value="女"/>女
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					联系方式：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userTel"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					E-mail：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userEmail"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					QQ：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userQq"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					头像：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="fujian" id="fujian" size="30" readonly="readonly"/>
					<input type="button" value="上传" onclick="up()"/>
					<input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9">
					&nbsp;
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="button" value="确定" onclick="check1();"/>
					<input type="button" value="取消" onclick="closeOpen()"/>
				</td>
			</tr>
		</table>
	</form></div>
	<div class="xwyh" style="display:none;"><form action="<%=path %>/userReg.action" name="form2" method="post">
		<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
			<tr>
				<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">
					校 外 用 户 注 册
				</th>
			</tr>
			<tr>
				<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					账号：
				</td>
				<td width="80%" bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userName" id="userName" placeholder="请输入您的手机号或姓名"/>
					<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					密 码：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="password" name="userPw"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					真实姓名：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userRealname"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					身份证号：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userIDNo"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					住址：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userAddress"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					性别：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="radio" name="userSex" value="男" checked="checked"/>男
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="userSex" value="女"/>女
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					联系方式：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userTel"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					E-mail：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userEmail"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					QQ：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="userQq"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
					头像：
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="text" name="fujian" id="fujian" size="30" readonly="readonly"/>
					<input type="button" value="上传" onclick="up()"/>
					<input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
				</td>
			</tr>
			<tr>
				<td height="30" align="right" bgcolor="#F9F9F9">
					&nbsp;
				</td>
				<td bgcolor="#FFFFFF">
					&nbsp;
					<input type="button" value="确定" onclick="check2();"/>
					<input type="button" value="取消" onclick="closeOpen()"/>
				</td>
			</tr>
		</table>
	</form></div>

	</body>
</html>
<script type="text/javascript">
    $(".regtab li").each(function () {
        $(this).click(function () {
            $(this).addClass('active').siblings().removeClass('active');
            var spanIndex = $(this).index();
            if(spanIndex ==0){
                $(".xnyh").show();
                $(".xwyh").hide();
            }else{
                $(".xnyh").hide();
                $(".xwyh").show();
            }
        })

    })
</script>
