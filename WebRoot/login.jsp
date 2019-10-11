<%@ page language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
	<title>login.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css">
    <style type="text/css">
    body 
    {
	   margin-left: 0px;
	   
    }
    .style2 {color: #990000}
    .input2 
    {
 	   font-size: 12px;
	   border: 3px double #A8D0EE;
	   color: #344898;
    }
    .submit1 
    {
	   border: 3px double #416C9C;
	   height: 22px;
	   width: 45px;
	   background-color: #F2F2F2;
	   font-size: 12px;
	   padding-top: 1px;
	   background-image: url(bt.gif);
	   cursor: hand;
    }
    .STYLE12 {font-family: Georgia, "Times New Roman", Times, serif}
    .STYLE13 {color: #316BD6; }
    .STYLE15 {color: #fdsere; font-size: 9pt; }
 </style>
 
 
 <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
 <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
 <script language="javascript">
 function check1()
 {                                                                                         
     if(document.ThisForm.userName.value=="")
	 {
	 	alert("请输入用户名1");
		document.ThisForm.userName.focus();
		return false;
	 }
	 document.getElementById("indicator").style.display="block";
	 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);
 }

 function callback(data)
 {
    document.getElementById("indicator").style.display="none";
    if(data=="no")
    {
        alert("用户名或密码错误");
    }
    if(data=="yes")
    {
        alert("通过验证,系统登录成功");
        window.location.href="<%=path %>/loginSuccess.jsp";
    }
 }
 </script>
</head>

  <body  marginheight="0" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" text="#666666" bgcolor="#336699">
  <table align="center">
    <tr>
      <td align="center" height="400" valign="middle">
     <form name="ThisForm" method="POST" action="">
      <table  background="img/loginA.jpg" width="500" height="300" border="0" cellspacing="0" cellpadding="0" style="margin-top:90" align="center">
          <tr>
            <th height="70" colspan="2" class="" scope="col"></th>
		  </tr>
          <tr>
            <th width="40%" height="30" align="right" scope="row" class="">用户名:</th>
            <td width="60%" height="30" class="">&nbsp; <input name="userName"  type="text" class="input2" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'"></td>
          </tr>
          <tr>
            <th width="40%" height="30" align="right" scope="row" class="">密&nbsp;&nbsp;码:</th>
            <td height="30" class="">&nbsp;<input name="userPw" type="password" size="21" class="input2" align="bottom" onMouseOver="this.style.background='#F0DAF3';" onMouseOut="this.style.background='#FFFFFF'"></td>
          </tr>
          <tr>
            <th height="35" colspan="2" scope="row" class="">
							<input name="button" type="button" class="submit1" value="登录" onClick="check1()"> &nbsp;
							<input name="Submit2" type="reset" class="submit1" value="重置">
							<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
            </th>
		  </tr>
        </table>
      </form>
      </td>
    </tr>
  </table>
</body>
