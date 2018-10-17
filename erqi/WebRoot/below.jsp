<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="360-site-verification" content="3947d125f79ca3ef03f10b5d78539ce7" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<script src="scripts/paraconfig.js" tppabs="http://www.zuche01.com/scripts/paraconfig.js"
	type="text/javascript" language="javascript"></script>

<script src="site/js/hx.js" tppabs="http://www.zuche01.com/site/js/hx.js" type="text/javascript"
	language="javascript"></script>

<link rel="stylesheet" type="text/css" href="site/css/base.css"
	tppabs="http://www.zuche01.com/site/css/base.css" />
<link rel="stylesheet" type="text/css" href="site/css/common.css"
	tppabs="http://www.zuche01.com/site/css/common.css" />
<link rel="stylesheet" type="text/css" href="site/css/calendar_new.css"
	tppabs="http://www.zuche01.com/site/css/calendar_new.css" />
<link rel="stylesheet" type="text/css" href="site/css/cusext.css"
	tppabs="http://www.zuche01.com/site/css/cusext.css" />
<link rel="stylesheet" type="text/css" href="site/css/text.css"
	tppabs="http://www.zuche01.com/site/css/text.css" />

<script language=javascript type="text/javascript" src="site/js/jquery-1.11.0.min.js"
	tppabs="http://www.zuche01.com/site/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../s.union.360.cn/127270.js"
	tppabs="http://s.union.360.cn/127270.js" async defer></script>
<title>和谐租车</title>
<link rel="stylesheet" type="text/css" href="site/js/jquery-ui.min.css"
	tppabs="http://www.zuche01.com/site/js/jquery-ui.min.css" />
<script language=javascript type="text/javascript" src="site/js/jquery.cookie.js"
	tppabs="http://www.zuche01.com/site/js/jquery.cookie.js"></script>
<script language=javascript type="text/javascript" src="site/js/jquery-ui.min.js"
	tppabs="http://www.zuche01.com/site/js/jquery-ui.min.js"></script>
<script language=javascript type="text/javascript" src="site/js/datepicker_cn.js"
	tppabs="http://www.zuche01.com/site/js/datepicker_cn.js"></script>
<script language=javascript type="text/javascript" src="site/js/jquery.lazyload.js"
	tppabs="http://www.zuche01.com/site/js/jquery.lazyload.js"></script>
<script language=javascript type="text/javascript" src="site/js/home.js"
	tppabs="http://www.zuche01.com/site/js/home.js"></script>
<script language=javascript type="text/javascript" src="site/js/dingdanmsg.js"
	tppabs="http://www.zuche01.com/site/js/dingdanmsg.js"></script>

<meta name="keywords" content="和谐租车，租车网，租车公司，汽车租赁 ,昆明租车,大理租车，丽江租车，西双版纳租车" />
<meta name="description"
	content="和谐租车-汽车租赁行业引领者，提供自驾租车、商务租车、个性化定制租车方案。全国任意网点支持异地取、还车，不限里程，让您可以随时随地享受无忧的用车服务！" />

</head>
<body>
<div class="footer-bottom">
<div class="contentBlock2">
<div class="comWidth">
<div class="footLink">
 
         <a href="about/aboutus.html" tppabs="http://www.zuche01.com/about/aboutus.html" target=_blank >关于我们</a>
          
           |  <a href="hx/html/20141323/41.html" tppabs="http://www.zuche01.com/hx/html/20141323/41.html" target=_blank >人才招聘</a>
          
           |  <a href="hx/html/20141323/42.html" tppabs="http://www.zuche01.com/hx/html/20141323/42.html" target=_blank >合作伙伴</a>
          
           |  <a href="hx/html/20141323/43.html" tppabs="http://www.zuche01.com/hx/html/20141323/43.html" target=_blank >友情链接</a>
          
           |  <a href="javascript:if(confirm('http://www.zuche01.net.cn/manager/login.aspx  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.zuche01.net.cn/manager/login.aspx'" tppabs="http://www.zuche01.net.cn/manager/login.aspx" target=_blank >员工管理</a>
          
           |  <a href="javascript:if(confirm('http://exmail.qq.com/login  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://exmail.qq.com/login'" tppabs="http://exmail.qq.com/login" target=_blank >邮箱登陆</a>
          
           |  <a href="hx/html/20141323/46.html" tppabs="http://www.zuche01.com/hx/html/20141323/46.html" target=_blank >联系我们</a>
         
</div>
&nbsp;<p>
<a id='___szfw_logo___' tppabs="https://credit.szfw.org/CX20151026011753110358.html" target='_blank'><img src="site/images/chengxin.png" tppabs="http://www.zuche01.com/site/images/chengxin.png" border='0' /></a>
<script type='text/javascript'>    (function () { document.getElementById('___szfw_logo___').oncontextmenu = function () { return false; } })();</script>
</p>
<p>Copyright @2010-2012 All Rights Reserved. </p>
<p>版权所有  云南物流产业集团和谐汽车服务有限公司  云ICP备11048027号-2 </p>
</div>
</div>
</div>
</body>
</html>
