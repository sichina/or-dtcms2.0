<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.payment" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created at 2013-4-14 19:23:14.
		本页面代码生成于 2013-4-14 19:23:14. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>支付中心－");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.3.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("    <!--菜单-->\r\n        <div class=\"grid_12 indexmenu  mt10\">\r\n            <div class=\"grid_3 logo alpha\">\r\n            <a href=\"http://www.uwill.org.cn\" target=\"_self\" title=\"优为精英教育机构网站\" ><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/logo.png\" width=\"169\" height=\"60\" alt=\"优为精英教育网站LOGO\" /></a></div>\r\n            <div class=\"grid_9 omega\">\r\n                <div class=\"grid_7 alpha\">\r\n                    <div class=\"grid_7 menu\">\r\n                        <ul>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"优为课程表\"><div style=\" background-image:url(");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/dotdot_27.png); background-position:top left; background-repeat:no-repeat;\" ><span id=\"menuspan\">课程表</span></div></a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"关于优为\">关于优为</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"精彩活动\">精彩活动</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"会员服务\">会员服务</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"资料下载\">资料下载</a></li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"clear\"></div>\r\n                    <div class=\"grid_7 submenu\">\r\n                        <div class=\"subleft\"></div>\r\n                        <div class=\"subcon\">\r\n                            <ul>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"全年龄段学习计划\" target=\"_blank\">全年龄段学习计划</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"NLP亲子学堂\" target=\"_blank\">NLP亲子学堂</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"国际夏冬令营\" target=\"_blank\">国际夏冬令营</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"出国留学顾问\" target=\"_blank\">出国留学顾问</a></li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"subright\"></div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"grid_2 omega\">\r\n                    <div class=\"mt8 listmenubg\"><a  class=\"listmenu\" href=\"javascript:window.external.AddFavorite('http://www.uwill.org.cn','优为精英教育机构-一切为了孩子，为了一切孩子，为了孩子一切')\" title=\"\">收藏网站</a></div>\r\n                    <div class=\"mt8 listmenubg\"><a class=\"listmenu\" href=\"\" title=\"\">设为首页</a></div>\r\n                </div>\r\n            </div>\r\n      </div>\r\n    <div class=\"clear\"></div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"cart_box\">\r\n    <h1 class=\"main_tit\">\r\n      支付中心<strong>Payment</strong>\r\n    </h1>\r\n    ");
	if (action=="confirm")
	{

	templateBuilder.Append("\r\n    <!--提交支付-->\r\n    <form id=\"pay_form\" name=\"pay_form\" method=\"post\" action=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("api/");
	templateBuilder.Append(Utils.ObjectToStr(payModel.api_path));
	templateBuilder.Append("/index.aspx\" target=\"_blank\">\r\n    <input id=\"pay_order_type\" name=\"pay_order_type\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(order_type));
	templateBuilder.Append("\" />\r\n    <input id=\"pay_order_no\" name=\"pay_order_no\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("\" />\r\n    <input id=\"pay_order_amount\" name=\"pay_order_amount\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append("\" />\r\n    <input id=\"pay_user_name\" name=\"pay_user_name\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.user_name));
	templateBuilder.Append("\" />\r\n    ");
	if (order_type=="Recharge")
	{

	templateBuilder.Append("\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>订单号：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>充值金额：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>支付方式：</dt>\r\n        <dd><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(payModel.img_url));
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(Utils.ObjectToStr(payModel.title));
	templateBuilder.Append("\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd><input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认支付\" /></dd>\r\n      </dl>\r\n    </div>\r\n    <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"账户充值\" />\r\n    ");
	}
	else if (order_type=="BuyGoods")
	{

	templateBuilder.Append("\r\n    <div class=\"cart_step\">\r\n      <ul>\r\n        <li><span>1</span>放进购物车</li>\r\n        <li class=\"item\"><span>2</span>填写订单信息</li>\r\n        <li class=\"last selected\"><span>3</span>支付/确定订单</li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>订单号：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_no));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>收货人姓名：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.accept_name));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>送货地址：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.address));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>手机号码：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.mobile));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>固定电话：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.telphone));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>备注留言：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(orderModel.message));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>支付金额：</dt>\r\n        <dd>");
	templateBuilder.Append(Utils.ObjectToStr(order_amount));
	templateBuilder.Append("</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>支付方式：</dt>\r\n        <dd><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(payModel.img_url));
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(Utils.ObjectToStr(payModel.title));
	templateBuilder.Append("\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd><input id=\"btnSubmit\" name=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认支付\" /></dd>\r\n      </dl>\r\n    </div>\r\n    <input id=\"pay_subject\" name=\"pay_subject\" type=\"hidden\" value=\"购买商品\" />\r\n    ");
	}	//end if


	templateBuilder.Append("\r\n    </form>\r\n    <!--提交支付-->\r\n    ");
	}	//end if


	if (action=="succeed")
	{

	templateBuilder.Append("\r\n    <!--支付成功-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico\"></div>\r\n      <div class=\"msg\">\r\n        <strong>支付成功啦！</strong>\r\n        <p>恭喜您，您的支付已经成功！</p>\r\n        <p>您可以点击这里进入<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a>查看订单状态！</p>\r\n        <p>如有其它问题，请立即与我们客服人员联系。</p>\r\n      </div>\r\n    </div>\r\n    <!--支付成功-->\r\n    ");
	}	//end if


	if (action=="error")
	{

	templateBuilder.Append("\r\n    <!--支付出错-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico error\"></div>\r\n      <div class=\"msg\">\r\n        <strong>出错啦，支付失败！</strong>\r\n        <p>支付过程中发生意处错误！</p>\r\n        <p>您可以点击这里进入<a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">会员中心</a>查看订单状态！</p>\r\n        <p>如您确实已经支付，请立即与我们客服人员联系。</p>\r\n      </div>\r\n    </div>\r\n    <!--支付出错-->\r\n    ");
	}	//end if


	if (action=="login")
	{

	templateBuilder.Append("\r\n    <!--用户未登录-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico warning\"></div>\r\n      <div class=\"msg\">\r\n        <strong>对不起，请登录后再进行支付！</strong>\r\n        <p>您尚未登录或已经超时啦！</p>\r\n        <p>如果您已是会员用户，请<a href=\"");
	templateBuilder.Append(linkurl("login"));

	templateBuilder.Append("\">点击这里进行登录</a>！</p>\r\n        <p>如果您尚未成为我们会员，请<a href=\"");
	templateBuilder.Append(linkurl("register"));

	templateBuilder.Append("\">点击这里注册</a>。</p>\r\n      </div>\r\n    </div>\r\n    <!--用户未登录-->\r\n    ");
	}	//end if


	if (action=="recharge")
	{

	templateBuilder.Append("\r\n    <!--用户余额不足-->\r\n    <div class=\"msg_tips\">\r\n      <div class=\"ico warning\"></div>\r\n      <div class=\"msg\">\r\n        <strong>对不起，您的余额不足本次支付！</strong>\r\n        <p>由于您选择的是余额支付，请确定您的余额是否足够！</p>\r\n        <p>如果余额不足，请<a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">点击这里充值</a>后再进行后续支付！</p>\r\n        <p>如果有任何问题，请与我们客服取得联系。</p>\r\n      </div>\r\n    </div>\r\n    <!--用户余额不足-->\r\n    ");
	}	//end if


	templateBuilder.Append("\r\n    <div class=\"clear\"></div>\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append(" <div class=\"footer\">\r\n            <div class=\"footercenter\">\r\n            <p><span>\r\n			<a class=\"footera\" href=\"./contact/index.html\">联系我们</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/sitemap.html\">法律声明</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/falv.html\">招聘信息</a><span> | </span>\r\n            <a class=\"footera\" href=\"http://www.miibeian.gov.cn/\" target=\"_blank\">湘ICP备12013776号</a>\r\n			</span><br /><br />\r\n            <span class=\"copyri\">Copyright ⓒ 20012  UWILL.ORG.CN. All rights reserved.  版权所有 优为精英教育机构</span>\r\n        	</p>\r\n            <div class=\"partner\">\r\n                <span style=\"font-family:'微软雅黑', '宋体';font-size:14px;color:#124a85;letter-spacing:2px;padding:0;margin:0;\">合作机构</span>\r\n                <select onchange=\"openerLink(this.value);\" class=\"partnerselect\">\r\n                <option value=\"-1\">【合作机构】</option> \r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;民生银行</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;崇尚百货</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;北大青鸟</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;雨花西餐厅</option>\r\n                <option value=\"-1\">【友情链接】</option>\r\n                <option value=\"http://www.baidu.com\">&nbsp;&nbsp;&nbsp;&nbsp;百度</option>\r\n                </select><br /><br />\r\n                <div class=\"qrcode\">\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/qrcode_for_gh_238f347649d8_258.jpg\" width=\"100\" height=\"100\" />\r\n                </div>\r\n            </div>\r\n            </div>\r\n    </div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
