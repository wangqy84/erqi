<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<jsp:include page="yinyong.jsp" />
<jsp:include page="top.jsp"/>

 <style>
.top {
	height: 113px;
	
	
}
.center{
}
.below {
	height: 186px;
	
}
</style>
</head>
  
  <body>
    <div class="banner"
		style="width: 100%;height:310pxoverflow: visible;position: relative;visibility: visible;display: block;">
		<ul class="bannerBox">




			<li focusimg><a href="hx/html/20151302/78.html"
				tppabs="http://www.zuche01.com/hx/html/20151302/78.html" class="imghref" target='_blank'
				style='background-image:url(/files/和谐租车保险说明banner.jpg)'>
			</a></li>

			<li nofocusimg><a href="hx/html/20170918/234.html"
				tppabs="http://www.zuche01.com/hx/html/20170918/234.html" class="imghref" target='_blank'
				style='background-image:url(/files/野马&新科迈罗新车上线banber20170216.jpg)'>
			</a></li>

			<li nofocusimg><a href="hx/html/20171102/218.html"
				tppabs="http://www.zuche01.com/hx/html/20171102/218.html" class="imghref" target='_blank'
				style='background-image:url(/files/党群招聘banner.jpg)'> </a></li>

			<li nofocusimg><a href="hx/html/20171616/187.html"
				tppabs="http://www.zuche01.com/hx/html/20171616/187.html" class="imghref" target='_blank'
				style='background-image:url(/files/会员积分2017banner.jpg)'>
			</a></li>

		</ul>
		<ul class="bannerButton">

			<li focus></li>

			<li></li>

			<li></li>

			<li></li>

		</ul>
	</div>
	<style type="text/css">
</style>
		<!--预定 begin-->
		<div class="comWidth">
			<div class="sideBar">
				<div class="shadow"></div>
				<div class="order">
					<ul class="orderTit">
						<li class="current" id="zl01">自驾短租(1-29天)</li>
						<li id="zl02">自驾长租(29天以上)</li>
					</ul>
				</div>
				<div class="formBox" style="display:block" id="fb01">
					<!--取车城市 begin-->
					<div class="selectItem">
						<div class="selectTit clear_float">
							<h3>取车城市</h3>
							<div id="getCity" class="clear_float" style="display:none;">
								<input name="getCheck" id="chbsongche" rel="get" type="checkbox" /> <label for="getCheck">送车上门</label>
							</div>
						</div>
						<ul class="selectBox">
							<li id="getcitybox"><input name="getCarCity" id="getCarCity1" class="select-input01"
								autocomplete="off" value="昆明市" maxlength="30" type="text"> <input id="txtqcid"
								style="display:none;" value="2" />


								<div class="search_form_suggest" style="display:none;" id="search_form_suggest1">
									<h3>
										<a class="ico btn_close thRight" item="close" onclick="$('.search_form_suggest').hide()">关闭</a>选择城市
									</h3>
									<dl class="search_hotList" id="search_hotList1">
										<dd>

											<a href="#" cid="2">昆明市</a> <a href="#" cid="3">大理</a> <a href="#" cid="4">曲靖市</a> <a
												href="#" cid="5">芒市</a> <a href="#" cid="6">玉溪市</a> <a href="#" cid="8">丽江市</a> <a
												href="#" cid="11">迪庆市</a> <a href="#" cid="12">景洪市</a> <a href="#" cid="13">腾冲</a> <a
												href="#" cid="16">红河州</a> <a href="#" cid="17">瑞丽</a>

										</dd>
									</dl>
									<div class="clear"></div>

								</div></li>
							<li>
								<div class="addressGet">
									<div class="address-box clear_float" id="getMendianBox">
										<a href="javascript:;" title="常用门店" type="button" class="address-in-used"
											id="usedStoreShowBox" style="display: none;"></a> <input name="getCarCityMenDian"
											id="getCarCityMenDian1" value="昆明昆都店" class="select-input02" autocomplete="off" readonly
											type="text"
											onclick="$('#divsearch_form_suggest').hide();$('#search_form_suggest2').hide();$('#search_form_suggest3').show();" />
										<input id="txtqcid3" style="display:none;" value="2" />

										<div class="search_form_suggest3" style="display:none;word-wrap: break-word;"
											id="search_form_suggest3">
											<h3>
												<a class="ico btn_close thRight" item="close"
													onclick="$('.search_form_suggest3').hide()">关闭</a>选择门店
											</h3>
											<dl class="search_hotList" id="search_hotList3">
												<dd>


													<a href="#" mdid="2">昆明昆都店</a> <a href="#" mdid="10">昆明云山路店</a> <a href="#" mdid="11">昆明春之城店</a>

													<a href="#" mdid="21">昆明长水机场店</a> <a href="#" mdid="44">昆明南亚店</a> <a href="#" mdid="46">昆明新螺蛳湾店</a>

													<a href="#" mdid="67">安宁店</a>

												</dd>
											</dl>
											<div class="clear"></div>

										</div>

									</div>
								</div> <!--add by wjl 20111013-->
								<div style="display: none;" class="fl">
									<div>
										<input value="请输入送车上门地址" readonly style="width: 199px; font-size: 12px;"
											id="txtGetCarAddress" autocomplete="off" name="txtGetCarAddress" type="text">
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!--还车城市 begin-->
					<div class="selectItem">
						<div class="selectTit clear_float">
							<h3>还车城市</h3>
							<div id="getCity" class="clear_float" style="display:none;">
								<input name="getCheck" id="chbquche" rel="get" type="checkbox" /> <label for="getCheck">上门取车</label>
							</div>
						</div>
						<ul class="selectBox">
							<li id="getcitybox"><input id="getCarCity2" class="select-input01" autocomplete="off"
								value="昆明市" maxlength="30" type="text" onclick="$('#search_form_suggest2').show();">

								<input id="txtqcid2" style="display:none;" value="2" />
								<div class="search_form_suggest2" style="display:none;" id="search_form_suggest2">
									<h3>
										<a class="ico btn_close thRight" item="close" onclick="$('.search_form_suggest2').hide()">关闭</a>选择城市
									</h3>
									<dl class="search_hotList" id="search_hotList2">
										<dd>

											<a href="#" cid="2">昆明市</a> <a href="#" cid="3">大理</a> <a href="#" cid="4">曲靖市</a> <a
												href="#" cid="5">芒市</a> <a href="#" cid="6">玉溪市</a> <a href="#" cid="8">丽江市</a> <a
												href="#" cid="11">迪庆市</a> <a href="#" cid="12">景洪市</a> <a href="#" cid="13">腾冲</a> <a
												href="#" cid="16">红河州</a> <a href="#" cid="17">瑞丽</a>

										</dd>
									</dl>
									<div class="clear"></div>

								</div></li>
							<li>
								<div class="addressGet">
									<div class="address-box clear_float" id="getMendianBox">
										<a href="javascript:;" title="常用门店" type="button" class="address-in-used"
											id="usedStoreShowBox" style="display: none;"></a> <input id="getCarCityMenDian2"
											value="昆明昆都店" class="select-input02" autocomplete="off" readonly type="text"
											onclick="$('#divsearch_form_suggest').hide();$('#search_form_suggest2').hide();$('#search_form_suggest3').hide();$('#search_form_suggest4').show();">
										<input id="txtqcid4" style="display:none;" value="2" />

										<div class="search_form_suggest4" style="display:none;word-wrap: break-word;"
											id="search_form_suggest4">
											<h3>
												<a class="ico btn_close thRight" item="close"
													onclick="$('.search_form_suggest4').hide()">关闭</a>选择门店
											</h3>
											<dl class="search_hotList" id="search_hotList4">
												<dd>

													<a href="#" mdid="2">昆明昆都店</a> <a href="#" mdid="10">昆明云山路店</a> <a href="#" mdid="11">昆明春之城店</a>

													<a href="#" mdid="21">昆明长水机场店</a> <a href="#" mdid="44">昆明南亚店</a> <a href="#" mdid="46">昆明新螺蛳湾店</a>

													<a href="#" mdid="67">安宁店</a>

												</dd>
											</dl>
											<div class="clear"></div>

										</div>

									</div>



								</div>

								<div style="display:none;" class="wnh r">
									<div>
										<input value="请输入上门取车地址" style="width: 199px; font-size: 12px;" readonly
											id="txtDropCarAddress" autocomplete="off" name="txtDropCarAddress" type="text" />
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="selectItem01 clear_float">
						<!--预订框时间部分 s-->
						<table id="book_CldDate_table" width="450" border="0" cellpadding="0" cellspacing="0">
							<tr style="display: none">
								<td><label class="tit"> </label><label class="radio"><input id="J_radio_1"
										type="radio" name="type" /></label><label class="radio"> <input id="J_radio_2"
										type="radio" name="type" checked="checked" />往返
								</label></td>
							</tr>
							<tr id="book_CldDate_fromdatedesc">
								<td colspan="2"></td>
							</tr>
							<tr>
								<td width="215"><label class="tit tit_new" for="J_date_1">
										<h3 id="book_CldDate_fromdesc">取车时间:</h3>
								</label> <input id="txtqucheriqi" type="text" readonly class="f-text" autocomplete="off"
									value="2018-10-17" /></td>
								<td id="book_CldDate_fromhour" width="235"><input type="text" id="txtqucheshijian"
									class="timedetail" readonly rel="13" value="15:00"
									onclick="showtime('search_form_suggest5');" style="color:#929292" /> <input id="txtqcid5"
									style="display:none;" />
									<div class="search_form_suggest5" style="display:none;" id="search_form_suggest5">
										<dl class="search_hotList" id="search_hotList5">
											<dd>
												<a href="#">8:00</a> <a href="#">9:00</a> <a href="#">10:00</a> <a href="#">11:00</a> <a
													href="#">12:00</a> <a href="#">13:00</a> <a href="#">14:00</a> <a href="#">15:00</a> <a
													href="#">16:00</a> <a href="#">17:00</a> <a href="#">18:00</a> <a href="#">19:00</a> <a
													href="#">20:00</a> <a href="#">21:00</a> <a href="#">22:00</a> <a href="#">23:00</a>
											</dd>

										</dl>
										<div class="clear"></div>

									</div></td>
							</tr>
							<tr style="display: none;">
								<td colspan="2">
									<div class="zjt-box">
										<label class="tit">
											<h3>
												租<input class="txt-zjt" id="txtZJT" type="text" value="2" maxlength="2" />天<span
													class="sp-txt">(可选)</span>
											</h3>
										</label>
									</div>
								</td>
							</tr>
							<tr id="book_CldDate_todateDesc">
								<td colspan="2"></td>
							</tr>
							<tr id="book_CldDate_todate">
								<td width="215"><label class="tit tit_new" for="J_date_2">
										<h3 id="book_CldDate_todesc">还车时间:</h3>
								</label> <input id="txthuancheriqi" type="text" readonly class="f-text" autocomplete="off"
									value="2018-10-18" /></td>
								<td id="book_CldDate_tohour" width="235"><input type="text" id="txthuancheshijian"
									class="timedetail" readonly rel="14" value="15:00"
									onclick="showtime('search_form_suggest6');" style="color:#929292" /> <input id="txtqcid6"
									style="display:none;" />
									<div class="search_form_suggest6" style="display:none;" id="search_form_suggest6">
										<dl class="search_hotList" id="search_hotList6">
											<dd>
												<a href="#">8:00</a> <a href="#">9:00</a> <a href="#">10:00</a> <a href="#">11:00</a> <a
													href="#">12:00</a> <a href="#">13:00</a> <a href="#">14:00</a> <a href="#">15:00</a> <a
													href="#">16:00</a> <a href="#">17:00</a> <a href="#">18:00</a> <a href="#">19:00</a> <a
													href="#">20:00</a> <a href="#">21:00</a> <a href="#">22:00</a> <a href="#">23:00</a>
											</dd>

										</dl>
										<div class="clear"></div>

									</div></td>
								<td><input id="hdnfromdate" value="book_CldDate_J_date_1" type="hidden" /> <input
									id="hdntodate" value="book_CldDate_J_date_2" type="hidden" /></td>
							</tr>
						</table>

					</div>
					<div class="ydk-time-region">
						<div class="time-region-txt" style="display:none;">
							租期:<span id="rentDay">2天</span>
						</div>

					</div>
					<div class="btn-home inp">
						<input id="btnSubmit" value="开始预订" type="button"
							onclick="recorduseryuding();window.location.href = 'DuanZu.htm'/*tpa=http://www.zuche01.com/DuanZu*/;" />

					</div>
				</div>


				<div class="formBox" style="display:none;" id="fb02">
					<div class="longBox">
						<div class="longrentBox">

							<div class="link-s" style="display:none;">
								<a href="#" style="display:none;">
									<div class="left" style="display:none;">
										<div class="day">7</div>
										<span class="date">-29</span>
										<div class="days">Days</div>
									</div>
									<div class="right">
										月租套餐<span class="fz18">（7.3折起）</span>&gt;
									</div>
								</a>
							</div>

							<div class="link-l">
								<a href="ChangZu.htm" tppabs="http://www.zuche01.com/ChangZu">
									<div class="left">
										<div class="day">30</div>
										<span class="date">+</span>
										<div class="days">days</div>
									</div>
									<div class="right">
										月租套餐<span class="fz18">（8折起）</span>&gt;
									</div>
								</a>
							</div>
						</div>
						<div class="clear"></div>
						<div class="longInfoBox ">
							<ul>
								<li>春节、国庆等法定假期不享受折扣优惠。</li>
								<li>套餐不支持异地还车服务，不可使用免费天数。</li>
								<li>长租套餐总租金优惠以下单时间的价格为准，并限和谐租车国内业务，不可与和谐租车其他优惠活动共享。</li>
							</ul>
						</div>
					</div>

				</div>


			</div>
		</div>

		<!--预定 end-->

		<div class="comWidth">
			<div class="blockLeft">



				<div class="special">
					<h2>
						<span class="yellowH"></span><span class="titF">特价优惠</span>
					</h2>
					<div class="changeCity">
						<span class="cityNum">当前有6个城市有特价车</span> <a class=cur cid="2">昆明市</a> <a cid="3">大理</a> <a
							cid="4">曲靖市</a> <a cid="5">芒市</a> <a cid="6">玉溪市</a> <a cid="8">丽江市</a> <a href="DuanZu.htm"
							tppabs="http://www.zuche01.com/DuanZu" class="moreC">更多城市</a>
					</div>
					<div class="carShow  clearfix">
						<div class="dis pr">
							<div class="carShowbox ">
								<ul class="carShowlist" id="carShowlist1">


									<li>
										<div class="car-img">
											<img class="lazy" data-original="/files/20180326/EC180官网_1.jpg" width="285" height="189"
												alt="北汽EC180纯电动">
										</div>
										<div class="car-info">
											<div class="fl">北汽EC180纯电动</div>
											<div class="fr">88元/日</div>
										</div>
										<div class="line"></div>
										<div class="car-info">
											<div class="fl">轿车 | 4座</div>
											<div class="fr">
												<a href="javascript:homeselectcar(87)" class="car-btn" clid="87">开始预订</a>
											</div>
										</div>
									</li>


									<li>
										<div class="car-img">
											<img class="lazy" data-original="/files/20180423/东风风行官网_1.jpg" width="285" height="189"
												alt="东风风行F600">
										</div>
										<div class="car-info">
											<div class="fl">东风风行F600</div>
											<div class="fr">140元/日</div>
										</div>
										<div class="line"></div>
										<div class="car-info">
											<div class="fl">MPV商务车 | 7座</div>
											<div class="fr">
												<a href="javascript:homeselectcar(80)" class="car-btn" clid="80">开始预订</a>
											</div>
										</div>
									</li>


									<li>
										<div class="car-img">
											<img class="lazy" data-original="/files/20150906/奥德赛2013_1.jpg" width="285" height="189"
												alt="本田奥德赛">
										</div>
										<div class="car-info">
											<div class="fl">本田奥德赛</div>
											<div class="fr">150元/日</div>
										</div>
										<div class="line"></div>
										<div class="car-info">
											<div class="fl">MPV商务车 | 7座</div>
											<div class="fr">
												<a href="javascript:homeselectcar(35)" class="car-btn" clid="35">开始预订</a>
											</div>
										</div>
									</li>




								</ul>
							</div>

							<a class="scroll-arr-l" style="display:none;"><div class="s-prev"></div></a> <a
								class="scroll-arr-r" style="display:none;"><div class="s-next" style="display:none;"></div></a>
						</div>
					</div>
				</div>


				<script language=javascript>
					
				</script>

				<!--预定 end-->
			</div>
			<div class="blockRight">
				<!--顺风车 -->



				<div class="rightBlcok">
					<h2>
						<span class="titF fl">和谐优势</span> <a href="ShunFeng.htm"
							tppabs="http://www.zuche01.com/ShunFeng" class="more fr"></a>
					</h2>

					<table style="height:295px;">
						<tr>
							<td><img src="site/Images/0001.jpg" tppabs="http://www.zuche01.com/site/Images/0001.jpg"
								style="width:90px;height:90px;"></td>
							<td style="padding-left:25px;"><b style="font-size:20px;">价格更低</b><br>网上直销，即刻报价<br />快捷透明。
							</td>
						</tr>
						<tr>
							<td><img src="site/Images/0002.jpg" tppabs="http://www.zuche01.com/site/Images/0002.jpg"
								style="width:90px;height:90px;"></td>
							<td style="padding-left:25px;"><b style="font-size:20px;">租期更灵活</b><br>1个月以上，尽享长租优惠。
							</td>
						</tr>


						<tr>
							<td><img src="site/Images/0003.jpg" tppabs="http://www.zuche01.com/site/Images/0003.jpg"
								style="width:90px;height:90px;"></td>
							<td style="padding-left:25px;"><b style="font-size:20px;">服务更优</b><br>专业化团队，强大系统支持。
							</td>
						</tr>


					</table>

				</div>




				<!--/顺风车 -->
			</div>

		</div>
		<div class="comWidth">
			<div class="blockLeft">
				<!--精彩活动 -->

				<!--/精彩活动 -->

				<div class="special">
					<h2>
						<span class="titF fl"><em class="yellowH"></em>精彩活动</span> <a href="YouHui.htm"
							tppabs="http://www.zuche01.com/YouHui" class="more fr">更多</a>
					</h2>
				</div>
				<div class="picBlock">

					<a href="hx/html/20170918/234.html" tppabs="http://www.zuche01.com/hx/html/20170918/234.html">
						<img data-original="/files/20171018/新车野马&新科迈罗web窗口.jpg" class="lazy" width="290" height="220"
						alt="福特野马MUSTAN">
					<p>福特野马MUSTAN</p>
					</a> <a href="hx/html/20171127/184.html" tppabs="http://www.zuche01.com/hx/html/20171127/184.html">
						<img data-original="/files/20170227/新车上线--帕萨特窗口页面20160216.jpg" class="lazy" width="290"
						height="220" alt="2017 100+ ">
					<p>2017 100+</p>
					</a> <a href="hx/html/20161628/139.html" tppabs="http://www.zuche01.com/hx/html/20161628/139.html">
						<img data-original="/files/20170217/新车上线--GL8--速腾20170217.jpg" class="lazy" width="290"
						height="220" alt="新车火爆上线！别克G">
					<p>新车火爆上线！别克G</p>
					</a>

				</div>

			</div>
			<div class="blockRight">
				<div class="rightBlcok">
					<h2>
						<span>门店查询</span> <a href="MenDian.htm" tppabs="http://www.zuche01.com/MenDian"
							class="more fr">更多</a>
					</h2>
					<div class="map">



						<div id="container"
							style="padding:3px; margin:3px; border:0px solid #cecece;height:260px; width:280px; ">
							<img class="lazy" data-original="/site/Images/map.jpg" />
						</div>




					</div>
				</div>
			</div>
		</div>
		<div class="clear mb30">&nbsp;&nbsp;</div>
		<div class="comWidth clearfix ">
			<!--专题活动 -->
			<div class="blockLeft">
				<div class="topic">
					<a href="ZhuanTi.htm" tppabs="http://www.zuche01.com/ZhuanTi"><img
						data-original="/site/Images/pic/pic2.jpg" width="890" height="140" alt="" alt="和谐专题"
						class="lazy"></a>
				</div>
			</div>
			<!--/专题活动 -->
			<div class="blockRight">
				<div class="twovm">
					<div class="fl">
						<a href="phone.htm" tppabs="http://www.zuche01.com/phone"><img
							data-original="/site/Images/pic/iphone.jpg" width="120" height="36" alt="和谐手机版" class="lazy"></a>
					</div>
					<div class="fr">
						<a href="phone.htm" tppabs="http://www.zuche01.com/phone"><img
							data-original="/site/Images/pic/android.jpg" width="120" height="36" alt="和谐手机版" class="lazy"></a>
					</div>
					<div class="clear mt10"></div>
					<div class="fl">
						<a href="phone.htm" tppabs="http://www.zuche01.com/phone"> <img
							src="site/Images/pic/iosv2.png" tppabs="http://www.zuche01.com/site/Images/pic/iosv2.png"
							width="100" height="100"></a>
					</div>
					<div class="fr">
						<a href="phone.htm" tppabs="http://www.zuche01.com/phone"><img
							data-original="/site/Images/pic/androidv2.png" class="lazy" width="100" height="100"
							alt="和谐手机版"></a>
					</div>
				</div>
			</div>

		</div>
		<!--底部公共信息 -->
		<div class="clear mb30"></div>
		<div class="footer-info  ">
			<div class="contentBlock1 clearfix">

				<div class="infoBlock">
					<div class="block1"></div>
					<h3>新手指南</h3>
					<div class="line">
						<div class="gray"></div>
					</div>
					<ul class="infoList">

						<li><span class="point"></span><a href="hx/html/20141423/30.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/30.html"> 门店预订</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/29.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/29.html"> 电话预订</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/28.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/28.html"> 网上预订</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/27.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/27.html"> 如何注册</a></li>

					</ul>
				</div>

				<div class="infoBlock">
					<div class="block2"></div>
					<h3>服务承诺</h3>
					<div class="line">
						<div class="gray"></div>
					</div>
					<ul class="infoList">

						<li><span class="point"></span><a href="hx/html/20141423/6.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/6.html"> 服务承诺</a></li>

					</ul>
				</div>

				<div class="infoBlock">
					<div class="block3"></div>
					<h3>会员管理</h3>
					<div class="line">
						<div class="gray"></div>
					</div>
					<ul class="infoList">

						<li><span class="point"></span><a href="hx/html/20141423/8.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/8.html"> 会员说明</a></li>

					</ul>
				</div>

				<div class="infoBlock">
					<div class="block4"></div>
					<h3>收费说明</h3>
					<div class="line">
						<div class="gray"></div>
					</div>
					<ul class="infoList">

						<li><span class="point"></span><a href="hx/html/20141423/34.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/34.html"> 收费说明</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/33.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/33.html"> 增值服务收</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/32.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/32.html"> 补偿性收费</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/31.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/31.html"> 结算规则</a></li>

					</ul>
				</div>

				<div class="infoBlock">
					<div class="block5"></div>
					<h3>服务规则</h3>
					<div class="line">
						<div class="gray"></div>
					</div>
					<ul class="infoList">

						<li><span class="point"></span><a href="hx/html/20151302/80.html"
							tppabs="http://www.zuche01.com/hx/html/20151302/80.html"> 提前还车</a></li>

						<li><span class="point"></span><a href="hx/html/20151302/79.html"
							tppabs="http://www.zuche01.com/hx/html/20151302/79.html"> 超时还车</a></li>

						<li><span class="point"></span><a href="hx/html/20151302/78.html"
							tppabs="http://www.zuche01.com/hx/html/20151302/78.html"> 保险服务</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/39.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/39.html"> 燃油使用规</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/38.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/38.html"> 续租规则</a></li>

						<li><span class="point"></span><a href="hx/html/20141423/37.html"
							tppabs="http://www.zuche01.com/hx/html/20141423/37.html"> 租车期限</a></li>

					</ul>
				</div>



			</div>
		</div>


		<!--右侧固定部分 -->
		<div id="goTopBtn" style="display:none;">
			<a href="javascript:void(0)"></a>
		</div>
		<div style="display:none;">
			<a class="suggtion" name="" href="javascript:;"></a> <a class="onlineAsk" href="javascript:;"
				title="在线咨询"></a> <a class="r2vm" href="javascript:;" title="weixinr"></a>
		</div>



		<script language=javascript>
			$(function() {
				$("img.lazy").lazyload();
			});
		</script>



		<div class="clear"></div>
	</div>
	<jsp:include page="below.jsp"/>
  </body>
</html>
