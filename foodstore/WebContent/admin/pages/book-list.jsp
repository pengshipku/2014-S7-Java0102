<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

-->
</style>
</head>

<body>

<table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30">
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
		  <td width="15" height="30"><img src="images/tab_03.gif" width="15" height="30" /></td>
		  <td background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" /> 
			<span class="STYLE4">Food list</span></td>
		  <td width="14"><img src="images/tab_07.gif" width="14" height="30" /></td>
		</tr>
	  </table>
	</td>
  </tr>
  <tr>
    <td>
	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="9" background="images/tab_12.gif">&nbsp;</td>
          <td bgcolor="e5f1d6">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CECECE">
				<tr>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Id</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Photo</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Name</div></td>
					<td width="5%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Price</div></td>
					<td width="20%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Intro</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Person</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Company</div></td>
					<td width="10%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2 STYLE1">Prodate</div></td>
					<td width="20%" height="26" background="images/tab_14.gif" class="STYLE1">
						<div align="center" class="STYLE2">Remark</div></td>
				</tr>
				
				<!-- 用struts的iterator标签遍历news集合, 并去处每一个name显示 -->
				<s:iterator value="bookList">
	
					<tr>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="id"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><a href="../book/detail.action?bookid=<s:property value="id"/>" target="_blank"><img src="../<s:property value="cover"/>" width="150px" height="150px"></a></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><a href="../book/detail.action?bookid=<s:property value="id"/>" target="_blank"><s:property value="name"/></a></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="price"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="intro"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="auther"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="press"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center" class="STYLE2 STYLE1"><s:property value="pubdate"/></div></td>
						<td height="20" bgcolor="#FFFFFF">
							<div align="center">
								<s:if test="!special"><img src="images/001.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet.action?id=<s:property value="id"/>&flag=11&status=${status}&page=${page}">Recommend</a><span class="STYLE1">]</span></s:if>
								<s:if test="special"><img src="images/010.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet.action?id=<s:property value="id"/>&flag=10&status=${status}&page=${page}">Cancel recommend</a><span class="STYLE1">]</span></s:if>
								<s:if test="!news"><img src="images/001.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet.action?id=<s:property value="id"/>&flag=21&status=${status}&page=${page}">New</a><span class="STYLE1">]</span></s:if>
								<s:if test="news"><img src="images/010.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet.action?id=<s:property value="id"/>&flag=20&status=${status}&page=${page}">Cancel new</a><span class="STYLE1">]</span></s:if>
								<s:if test="!sale"><img src="images/001.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet.action?id=<s:property value="id"/>&flag=31&status=${status}&page=${page}">Promotion</a><span class="STYLE1">]</span></s:if>
								<s:if test="sale"><img src="images/010.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookSet.action?id=<s:property value="id"/>&flag=30&status=${status}&page=${page}">Cancel promotion</a><span class="STYLE1">]</span></s:if>
								<br>
								<img src="images/037.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookUp.action?id=<s:property value="id"/>&page=${page}">Modify</a><span class="STYLE1">]</span>
								<img src="images/083.gif" width="9" height="9" /><span class="STYLE1">[</span><a href="bookDelete.action?book.id=<s:property value="id"/>&page=${page}">Delete</a><span class="STYLE1">]</span>
							</div>
						</td>
					</tr>
					
				</s:iterator>
				
			</table>
		  </td>
		  <td width="9" background="images/tab_16.gif">&nbsp;</td>
		</tr>
	  </table>
	</td>
  </tr>
  <tr>
    <td height="29">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
			<td width="15" height="29"><img src="images/tab_20.gif" width="15" height="29" /></td>
			<td background="images/tab_21.gif">${pageTool}</td>
			<td width="14"><img src="images/tab_22.gif" width="14" height="29" /></td>
		  </tr>
		</table>
	</td>
  </tr>
</table>

</body>
</html>
