<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.dqwr.entity.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>河北省科学技术情报研究院科技政策服务平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script language="JavaScript" src="js/jquery-1.9.1.min.js"></script>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script language="JavaScript" src="js/index.js">

</script>
<style type="text/css">

<!--
.center {font-size:12px;}
.news tr{height: 30px}
.news td,th{

background:expression((this.parentNode.rowIndex)%2==0?"#3DB7CC":"#B3F4FF");

}
.news a{color: #000000;}
.tag ul{list-style:none}
.tag li{float:left;margin-left: 50px;}
a{text-decoration:none}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/bg.jpg);
	background-repeat: repeat-x;
	background-color: #F3F3F3;;
}
.STYLE22 {
	color: #fffff;
	font-size:20px;
	font-weight:bold;
}
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}
.STYLE2 {
	font-size: 12px;
	color: #000033;
}
.STYLE3 {
	color: #FFFFFF;
	font-size: 12px;
	line-height: 25px;
}
.STYLE5 {font-size: 20px; font-weight: bold; color: #FFFFFF; }
-->
</style>
<% YH wbuser = (YH) session.getAttribute("wbuser"); %>
</head>
<body>
<div align="center">
  <!-- Save for Web Slices (首页new切割好.psd) -->
  <table id="__01" width="1046" height="968" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="132" colspan="4">
        <img src="images/index_01.jpg" width="1046" height="132"></td>
	  </tr>
    <tr>
      <td height="42" colspan="4" background="images/index_0300.jpg">
      <div class="nav">
      <div align="center" class="navinner" class="tag">
		<ul class="navlist">
		<li><a href="${pageContext.request.contextPath}/qt/index.jsp" style="color: #FFFFFF">首页</a></li>
		<li><a href="${pageContext.request.contextPath}/qt/zcfl.jsp" style="color: #FFFFFF">政策导航</a></li>
		<li><a href="${pageContext.request.contextPath}/qt/qtcx.jsp" style="color: #FFFFFF">政策查询</a></li>
		<li><a href="${pageContext.request.contextPath}/qt/qttjfx.jsp" style="color: #FFFFFF">政策分析</a></li>
		<li><a href="${pageContext.request.contextPath}/qt/zcjd.jsp" style="color: #FFFFFF">政策解读</a></li>
		<li><a href="${pageContext.request.contextPath}/qt/xtjs.jsp" style="color: #FFFFFF">系统介绍</a></li>
		<li><a href="${pageContext.request.contextPath}/qt/denglu.jsp" style="color: #FFFFFF">用户登陆</a></li>
		</ul>	  
		</div>
		</div>
	  </tr>
    <tr>
      <td height="38" colspan="3" background="images/index_0400.jpg"><span id="d" class="STYLE2"></span></td>
	    <td height="38" background="images/index_0400.jpg" class="STYLE2"><div align="right">
	    <%if(wbuser!=null){%>
	     <div style="float: right;">欢迎：<%=wbuser.getUsername() %>&nbsp;&nbsp;&nbsp;<a href="#" id="zx" style="color: blue">注销</a>&nbsp;&nbsp; </div>
	     <%} %>
	    </div></td>
    </tr>
    
    <tr>
      <td colspan="2" border="0"  valign="top">
       <table width="259"  border="0" cellpadding="0" cellspacing="0" >
        <tr>
          <td height="41" background="images/temp_09.jpg"><div align="center"><span class="STYLE5">&nbsp;用户登录</span></div></td>
        </tr>
        <tr>
          <td height="162" background="images/temp_11.jpg">
          <%if(wbuser==null){ %>
          <table style="margin-left: 30px;">
          	<tr><td>用户名</td><td colspan="2"><input name="username" id="username" type="text"></td></tr>
          	<tr><td>密&nbsp;&nbsp;码</td><td colspan="2"><input name="userpassword" type="password" id="userpassword"></td></tr>
         	<tr>
         	<td>验证码</td>
         	<td><input type="text" size="8" name="randcode" id="randcode"></td>
         	<td><img src="images/randCode.jsp" width="50" height="25">
         	</tr>
         	<tr><td colspan="3">
         	<table width="100%">
         	<tr >
         	<td><input type="button" width="30px;" value="&nbsp;&nbsp;&nbsp;登陆&nbsp;&nbsp;&nbsp;" id="dl" onclick="IMG1_onclick2()"/></td>
         	<td><input type="button" id="zcbtn" value="&nbsp;&nbsp;&nbsp;注册&nbsp;&nbsp;&nbsp;"/></td>
         	</tr>
         	</table>
         	</td></tr>
         	<tr><td colspan="3"><input type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IP地址自动登陆&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" id="ipdl" onclick="IMG1_onclick3()"/></td></tr>
          </table>
          <% }else{ %>
          <table style="margin-left: 30px;">
          <tr><td>欢迎：</td><td><%=wbuser.getYHNC() %></td></tr>
          <tr><td>身份：</td>
          <td>
          <%if(wbuser.getYJSID().equals("1")){ %>
          	普通用户
          <%}else{ %>
          	研究人员
          <%} %>
          </td></tr>
          <tr><td colspan="2">
          <input type="button" id="zx" value="注销">
          </td>
          </tr>
          </table>
          <%} %>
          &nbsp;</td>
          </tr>
        <tr>
          <td height="27" background="images/temp_13.jpg">&nbsp;</td>
        </tr>
      </table> 
      <table width="259"  border="0" cellpadding="0" cellspacing="0" >
        <tr>
          <td height="41" background="images/temp_09.jpg"><div align="center"><span class="STYLE5">&nbsp;关于我们</span></div></td>
        </tr>
        <tr>
          <td height="162" background="images/temp_11.jpg">&nbsp;</td>
          </tr>
        <tr>
          <td height="27" background="images/temp_13.jpg">&nbsp;</td>
        </tr>
      </table>
      
      </td>
     
	    <td colspan="2" valign="top"><table width="785" height="606" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="21" height="41"><img src="images/2temp_10.jpg" width="21" height="41"></td>
            <td width="748" background="images/2temp_11.jpg" ><font color="#FFFFFF">系统介绍</font>&nbsp;</td>
            <td width="16"><img src="images/2temp_12.jpg" width="17" height="41"></td>
          </tr>
          <tr>
            <td height="550" background="images/2temp_13.jpg">&nbsp;</td>
            <td class="center" valign="top" bgcolor="#FFFFFF">
            	<div style="width: 100%;margin-top: 20px" align="center"><font size="15xp">关于我们</font></div>
            	<div style="width: 100%;margin-top: 20px">
            	<!-- 关于我们的内容 -->
            	<font size="4">
            	&nbsp;&nbsp;&nbsp;&nbsp;
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们
            	</font>
            	</div>
           </td>
            <td background="images/2temp_15.jpg">&nbsp;</td>
          </tr>
          <tr>
            <td height="14"><img src="images/2temp_17.jpg" width="21" height="14"></td>
            <td height="14" background="images/2temp_18.jpg"></td>
            <td><img src="images/2temp_19.jpg" width="17" height="14"></td>
          </tr>
        </table></td>
	  </tr>
	  <tr>
	  <td height="29" colspan="4" ><div align="center">
      <font color=#000099 size="4"><strong>友情链接</strong></font>
      <select onChange="window.open(this.options[this.selectedIndex].value)">
      	<option selected>--政府网站--</option>
      	<option  value="http://www.hebei.gov.cn/">中国.河北</option>
      	<option  value="http://www.hebstd.gov.cn/">省科学技术厅</option>
      	<option  value="http://www.ii.gov.cn/">省信息产业厅</option>
      	<option  value="http://www.hbdrc.gov.cn/">省发改委</option>
      	<option  value="http://www.hee.cn/">省教育厅</option>
      	<option >------------</option>
      	<option  value="http://www.most.gov.cn/">科学技术部</option>
      	<option  value="http://www.sdpc.gov.cn/">国家发改委</option>
      	<option  value="http://www.moe.edu.cn/">教育部</option>
      	<option  value="http://www.sipo.gov.cn/">国家知识产权局</option>
      	<option  value="http://www.cas.cn/">中国科学院</option>
      </select>
      <select onChange="window.open(this.options[this.selectedIndex].value)">
      	<option selected>--本省科技--</option>
      	<option  value="http://www.sjzkj.gov.cn/cyportal/template/site00_index.jsp">石家庄</option>
      	<option  value="http://www.chengde.gov.cn/">承德市</option>
      	<option  value="http://www.zjkkj.gov.cn/">张家口市</option>
      	<option  value="http://www.tskj.com.cn/">唐山市</option>
      	<option  value="http://www.lfinfo.gov.cn/">廊坊市</option>
      </select>
      <select onChange="window.open(this.options[this.selectedIndex].value)">
      	<option selected>--各省科技--</option>
      	<option  value="http://www.heinfo.gov.cn/Home/Index.asp">河北科技信息网</option>
      	<option  value="http://www.bjkw.gov.cn/n8785584/index.html">北京市科委</option>
      	<option  value="http://www.tisti.ac.cn/">天津科技网</option>
      	<option  value="http://www.sxinfo.gov.cn/">中国山西之窗</option>
      	<option  value="http://www.nmsti.com/2014/">内蒙古科技信息网</option>
      	<option  value="http://www.lninfo.gov.cn/">辽宁科技信息网</option>
      	<option  value="http://kjt.jl.gov.cn/kjt/4/tindex.shtml">吉林科学技术厅</option>
      	<option  value="http://www.hljkjt.gov.cn/">黑龙江科技厅</option>
      	<option  value="http://www.jsinfo.gov.cn/">江苏科技信息网</option>
      	<option  value="http://www.zjinfo.gov.cn/">浙江科技网</option>
      	<option  value="http://www.ahinfo.gov.cn/">安徽科技网</option>
      	<option  value="http://www.fjinfo.gov.cn/">福建科技网</option>
      	<option  value="http://www.jxinfo.gov.cn/">江西科技信息网</option>
      	<option  value="http://www.sdstc.gov.cn/">山东科学技术厅</option>
      	<option  value="http://www.hnkjt.gov.cn/new/index.eiip">河南科技网</option>
      	<option  value="http://www.hbstd.gov.cn/">湖北科学技术厅</option>
      	<option  value="http://www.sti.gd.cn/">广东金科网</option>
      	<option  value="http://www.cstc.gov.cn/">重庆市科委</option>
      	<option  value="http://www.sninfo.gov.cn:8083/initSnFirstPageList.do?method=initSnFirstPageList">陕西科技信息网</option>
      	<option  value="http://www.xjinfo.gov.cn/">新疆科技信息网</option>
      	<option  value="http://www.scst.gov.cn/info/">四川省科学技术厅</option>
      	<option  value="http://www.gsinfo.net.cn/">甘肃科技信息网</option>
      	<option  value="http://www.ynst.net.cn/">云南科技信息网</option>       	
      	
      </select>
      <select onChange="window.open(this.options[this.selectedIndex].value)">
      	<option selected>--其他科技--</option>
      	<option  value="http://www.cast.org.cn/">中国科学技术协会</option> 
      	<option  value="http://www.stdaily.com/">科技日报</option> 
      	<option  value="http://www.stdaily.com/">中国科普网</option> 
      	<option  value="http://www.istic.ac.cn/">中国科技信息研究</option> 
      	<option  value="http://www.chinainfo.gov.cn/">中国科技信息</option> 
      	<option  value="http://www.cstec.org/zh/index.aspx">中国科技交流中心</option>
      	<option>-----------</option> 
      	<option  value="http://www.picmg.com.cn/">中国计算机行业网</option> 
      	<option  value="http://www.clii.com.cn/">中国轻工信息网</option> 
      	<option  value="http://www.aptchina.com/">中国应用技术网</option>  
      </select>
      <select onChange="window.open(this.options[this.selectedIndex].value)">
      	<option selected>--资源网站--</option>
      	<option  value="http://scitech.people.com.cn/policy/#1">中国科技政策网</option> 
      	<option  value="http://policy.tech110.net/">国家科技成果网</option> 
      	<option  value="http://www.most.gov.cn/kjzc/gjkjzc/">国家科技政策</option> 
      	<option  value="http://www.chinalaw.gov.cn/article/fgkd/xfg/">国务院法制办公室</option> 
      	<option  value="http://www.sninfo.gov.cn:8083/initSnZcfgTwoPageList.do?method=initSnZcfgTwoPageList">陕西省科技信息网</option> 
      	<option  value="http://www.51policy.cn/">江苏省科技政策服务网</option> 
      	<option  value="http://zc.k8008.com/">科易网科技政策服务中心</option> 
      	<option  value="http://www.kjzj.org.cn/">中关村科技服务平台</option> 
      	<option  value="http://www.kjzcfg.com/html/sort/sort3/index.html">贵州省科技政策法规服务平台</option>  
      </select >
      
      <select onChange="window.open(this.options[this.selectedIndex].value)">
      	<option selected>--搜索引擎--</option>
      	<option  value="http://www.sohu.com/">搜狐</option>
      	<option  value="http://www.sina.com.cn/">新浪</option>
      	<option  value="http://www.163.com/">网易</option>
      	<option  value="http://www.baidu.com/">百度</option>
      	<option  value="http://www.google.com/">goole</option>
      </select >
      
      </div></td>
    </tr>
    <tr>
      <td height="29" colspan="4" background="images/index_0900.jpg" class="STYLE1"><div align="center"><a style="color: #FFFFFF" href="lxwm.jsp">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;设为首页&nbsp;&nbsp;|&nbsp;&nbsp;加入收藏&nbsp;&nbsp;|&nbsp;&nbsp;<a href="mzsm.jsp" style="color:#ffffff">免责声明</a></div></td>
	  </tr>
    <tr>
	     <td colspan="4" rowspan="2" background="images/index_11.jpg"><div align="center" class="STYLE3">
	 	版权所有 @ 河北省科学技术情报研究院科技政策服务平台
		<br>
		地址: 河北省石家庄市青园街233号 邮编：050021 
		</div>
	      </td>
	  </tr>
    
  </table>
  <!-- End Save for Web Slices -->
</div>
<map name="Map"><area shape="rect" coords="21,1,117,37" href="#"><area shape="rect" coords="127,2,227,37" href="#"><area shape="rect" coords="23,49,143,75" href="#"><area shape="rect" coords="152,45,231,82" href="#"></map></body>
</html>
