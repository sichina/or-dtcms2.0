<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.userpoint" ValidateRequest="false" %>
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

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>我的积分 - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\">\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\">\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/ui/skins/Aqua/css/ligerui-all.css\" />\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/css/style.css\" rel=\"stylesheet\">\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-1.3.2.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/ui/js/ligerBuild.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<!--Header-->\r\n");

	templateBuilder.Append("    <!--菜单-->\r\n        <div class=\"grid_12 indexmenu  mt10\">\r\n            <div class=\"grid_3 logo alpha\">\r\n            <a href=\"http://www.uwill.org.cn\" target=\"_self\" title=\"优为精英教育机构网站\" ><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/logo.png\" width=\"169\" height=\"60\" alt=\"优为精英教育网站LOGO\" /></a></div>\r\n            <div class=\"grid_9 omega\">\r\n                <div class=\"grid_7 alpha\">\r\n                    <div class=\"grid_7 menu\">\r\n                        <ul>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"优为课程表\"><div style=\" background-image:url(");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/dotdot_27.png); background-position:top left; background-repeat:no-repeat;\" ><span id=\"menuspan\">课程表</span></div></a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"关于优为\">关于优为</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"精彩活动\">精彩活动</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"会员服务\">会员服务</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"资料下载\">资料下载</a></li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"clear\"></div>\r\n                    <div class=\"grid_7 submenu\">\r\n                        <div class=\"subleft\"></div>\r\n                        <div class=\"subcon\">\r\n                            <ul>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"全年龄段学习计划\" target=\"_blank\">全年龄段学习计划</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"NLP亲子学堂\" target=\"_blank\">NLP亲子学堂</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"国际夏冬令营\" target=\"_blank\">国际夏冬令营</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"出国留学顾问\" target=\"_blank\">出国留学顾问</a></li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"subright\"></div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"grid_2 omega\">\r\n                    <div class=\"mt8 listmenubg\"><a  class=\"listmenu\" href=\"javascript:window.external.AddFavorite('http://www.uwill.org.cn','优为精英教育机构-一切为了孩子，为了一切孩子，为了孩子一切')\" title=\"\">收藏网站</a></div>\r\n                    <div class=\"mt8 listmenubg\"><a class=\"listmenu\" href=\"\" title=\"\">设为首页</a></div>\r\n                </div>\r\n            </div>\r\n      </div>\r\n    <div class=\"clear\"></div>");


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"left180\">\r\n    <!--Sidebar-->\r\n    ");

	templateBuilder.Append("    <div class=\"sidebar\">\r\n      <h3>交易管理</h3>\r\n      <ul>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userorder","list"));

	templateBuilder.Append("\">交易订单</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userorder","close"));

	templateBuilder.Append("\">已关闭订单</a></li>\r\n      </ul>\r\n      <h3>账户管理</h3>\r\n      <ul>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("useramount","recharge"));

	templateBuilder.Append("\">账户余额</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">我的积分</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">站内短信</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","invite"));

	templateBuilder.Append("\">邀请码</a></li>\r\n      </ul>\r\n      <h3>基本资料</h3>\r\n      <ul>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","proinfo"));

	templateBuilder.Append("\">个人资料</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","password"));

	templateBuilder.Append("\">修改密码</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usercenter","exit"));

	templateBuilder.Append("\">退出登录</a></li>\r\n      </ul>\r\n    </div>");


	templateBuilder.Append("\r\n    <!--/Sidebar-->\r\n  </div>\r\n  \r\n  <div class=\"right757\">\r\n    <h1 class=\"main_tit\">\r\n      <span><a href=\"");
	templateBuilder.Append(linkurl("usercenter","index"));

	templateBuilder.Append("\">管理首页</a></span>\r\n      我的积分\r\n      <strong>Point</strong>\r\n    </h1>\r\n    ");
	if (action=="convert")
	{

	templateBuilder.Append("\r\n    <!--积分兑换-->\r\n    <div class=\"tab_head\">\r\n      <ul class=\"tabs\">\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">积分兑换</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userpoint","list"));

	templateBuilder.Append("\">积分明细</a></li>\r\n      </ul>\r\n    </div>\r\n    <h3>目前的账户积分:<b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(userModel.point));
	templateBuilder.Append("</b>分 金额：<b class=\"red\">");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append("</b>元</h3>\r\n    ");
	if (uconfig.pointcashrate==0)
	{

	templateBuilder.Append("\r\n    <h3>目前的积分兑换功能已被关闭！</h3>\r\n    ");
	}
	else if (userModel.amount<1)
	{

	templateBuilder.Append("\r\n    <h3>目前您的余额不足，不能使用积分兑换功能！</h3>\r\n    ");
	}
	else
	{

	templateBuilder.Append("\r\n    <input id=\"hideAmount\" name=\"hideAmount\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(userModel.amount));
	templateBuilder.Append("\" />\r\n    <input id=\"hideCashrate\" name=\"hideCashrate\" type=\"hidden\" value=\"");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.pointcashrate));
	templateBuilder.Append("\" />\r\n    <link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.validate.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/messages_cn.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n      $(function(){\r\n        //初始化表单\r\n        AjaxInitForm('point_form', 'btnSubmit', 1, 'turl');\r\n      });\r\n    </");
	templateBuilder.Append("script>\r\n    <form id=\"point_form\" name=\"point_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_point_convert\">\r\n    <div class=\"form_box\">\r\n      <dl>\r\n        <dt>兑换说明：</dt>\r\n        <dd>积分兑换最少金额为1元，兑换比例为：1元等于");
	templateBuilder.Append(Utils.ObjectToStr(uconfig.pointcashrate));
	templateBuilder.Append("个积分</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>积分兑换：</dt>\r\n        <dd><input name=\"txtAmount\" id=\"txtAmount\" type=\"text\" class=\"input small required\" maxlength=\"50\" style=\"ime-mode:disabled;\" onchange=\"NumConvert(this);\" />\r\n        金额转换成 <strong id=\"convertPoint\" class=\"red\" style=\"font-size:16px;\">0</strong> 积分</dd>\r\n      </dl>\r\n      <dl>\r\n        <dt>验证用户密码：</dt>\r\n        <dd><input name=\"txtPassword\" id=\"txtPassword\" type=\"password\" class=\"input txt required\" maxlength=\"50\" /></dd>\r\n      </dl>\r\n      <dl>\r\n        <dt></dt>\r\n        <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认转换\" /></dd>\r\n      </dl>\r\n    </div>\r\n    </form>\r\n    <input id=\"turl\" name=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\" />\r\n    ");
	}	//end if


	templateBuilder.Append("\r\n    <!--/积分兑换-->\r\n    \r\n    ");
	}
	else if (action=="list")
	{

	templateBuilder.Append("\r\n    <!--积分明细-->\r\n    <script type=\"text/javascript\">\r\n		function ExecPostBack(checkValue) {\r\n			if (arguments.length == 1) {\r\n				ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_point_delete', checkValue, 'turl');\r\n			}else{\r\n				var valueArr = '';\r\n				$(\"input[name='checkId']:checked\").each(function(i){\r\n					valueArr += $(this).val();\r\n					if(i < $(\"input[name='checkId']:checked\").length - 1){\r\n						valueArr += \",\"\r\n					}\r\n				});\r\n				ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_point_delete', valueArr, 'turl');\r\n			}\r\n		}\r\n	</");
	templateBuilder.Append("script>\r\n    <div class=\"tab_head\">\r\n      <ul class=\"tabs\">\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("userpoint","convert"));

	templateBuilder.Append("\">积分兑换</a></li>\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("userpoint","list"));

	templateBuilder.Append("\">积分明细</a></li>\r\n      </ul>\r\n    </div>\r\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n      ");
	DataTable list1 = get_user_point_list(10, page, "user_id='"+userModel.id+"'", out totalcount);
	

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	string pagelist1 = get_page_link(10, page, totalcount, "userpoint1", action, "__id__");
	

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n      ");
	int dr__loop__id=0;
	foreach(DataRow dr in list1.Rows)
	{
		dr__loop__id++;


	templateBuilder.Append("\r\n      <tr>\r\n        <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n        <td width=\"150\">" + Utils.ObjectToStr(dr["add_time"]) + "</td>\r\n        <td>" + Utils.ObjectToStr(dr["remark"]) + "</td>\r\n        <td width=\"50\">\r\n          ");
	if (Utils.StrToInt(Utils.ObjectToStr(dr["value"]), 0)>0)
	{

	templateBuilder.Append("\r\n          +" + Utils.ObjectToStr(dr["value"]) + "\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          " + Utils.ObjectToStr(dr["value"]) + "\r\n          ");
	}	//end if


	templateBuilder.Append("\r\n        </td>\r\n        <td width=\"35\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n      </tr>\r\n      ");
	}	//end loop


	if (totalcount<1)
	{

	templateBuilder.Append("\r\n      <tr><td align=\"center\">暂无记录</td></tr>\r\n      ");
	}	//end if


	templateBuilder.Append("\r\n    </table>\r\n    \r\n    <div class=\"page_foot\">\r\n      <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist1));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n      <div class=\"page_btns\">\r\n        <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n        <span class=\"pipe\">|</span>\r\n        <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n      </div>\r\n    </div>\r\n    <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("userpoint","list"));

	templateBuilder.Append("\" />\r\n    <!--积分明细-->\r\n    ");
	}	//end if


	templateBuilder.Append("\r\n    \r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append(" <div class=\"footer\">\r\n            <div class=\"footercenter\">\r\n            <p><span>\r\n			<a class=\"footera\" href=\"./contact/index.html\">联系我们</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/sitemap.html\">法律声明</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/falv.html\">招聘信息</a><span> | </span>\r\n            <a class=\"footera\" href=\"http://www.miibeian.gov.cn/\" target=\"_blank\">湘ICP备12013776号</a>\r\n			</span><br /><br />\r\n            <span class=\"copyri\">Copyright ⓒ 20012  UWILL.ORG.CN. All rights reserved.  版权所有 优为精英教育机构</span>\r\n        	</p>\r\n            <div class=\"partner\">\r\n                <span style=\"font-family:'微软雅黑', '宋体';font-size:14px;color:#124a85;letter-spacing:2px;padding:0;margin:0;\">合作机构</span>\r\n                <select onchange=\"openerLink(this.value);\" class=\"partnerselect\">\r\n                <option value=\"-1\">【合作机构】</option> \r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;民生银行</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;崇尚百货</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;北大青鸟</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;雨花西餐厅</option>\r\n                <option value=\"-1\">【友情链接】</option>\r\n                <option value=\"http://www.baidu.com\">&nbsp;&nbsp;&nbsp;&nbsp;百度</option>\r\n                </select><br /><br />\r\n                <div class=\"qrcode\">\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/qrcode_for_gh_238f347649d8_258.jpg\" width=\"100\" height=\"100\" />\r\n                </div>\r\n            </div>\r\n            </div>\r\n    </div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
