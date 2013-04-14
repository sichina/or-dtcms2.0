<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.usermessage" ValidateRequest="false" %>
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

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>站内短信息 - ");
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n	function ExecPostBack(checkValue) {\r\n		if (arguments.length == 1) {\r\n			ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_message_delete', checkValue, 'turl');\r\n		}else{\r\n			var valueArr = '';\r\n			$(\"input[name='checkId']:checked\").each(function(i){\r\n				valueArr += $(this).val();\r\n				if(i < $(\"input[name='checkId']:checked\").length - 1){\r\n					valueArr += \",\"\r\n				}\r\n			});\r\n			ExecDelete('");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_message_delete', valueArr, 'turl');\r\n		}\r\n    }\r\n</");
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

	templateBuilder.Append("\">管理首页</a></span>\r\n      站内短信\r\n      <strong>Message</strong>\r\n    </h1>\r\n    ");
	if (action=="system")
	{

	templateBuilder.Append("\r\n    <!--系统消息-->\r\n    <div class=\"tab_head\">\r\n      <a class=\"add\" href=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\">+ 写新消息</a>\r\n      <ul class=\"tabs\">\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a></li>\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a></li>\r\n      </ul>\r\n    </div>\r\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n      ");
	DataTable list1 = get_user_message_list(10, page, "accept_user_name='"+userModel.user_name+"' and type=1", out totalcount);
	

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	string pagelist1 = get_page_link(10, page, totalcount, "usermessage1", action, "__id__");
	

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n      ");
	int dr__loop__id=0;
	foreach(DataRow dr in list1.Rows)
	{
		dr__loop__id++;


	templateBuilder.Append("\r\n      <tr>\r\n        <td width=\"20\" align=\"center\">\r\n          ");
	if (Utils.ObjectToStr(dr["is_read"])=="1")
	{

	templateBuilder.Append("\r\n          <img title=\"已读\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/pm_1.gif\">\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <img title=\"未读\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/pm_0.gif\">\r\n          ");
	}	//end if


	templateBuilder.Append("\r\n        </td>\r\n        <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n        <td><a href=\"");
	templateBuilder.Append(linkurl("usermessage_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></td>\r\n        <td width=\"150\">" + Utils.ObjectToStr(dr["post_time"]) + "</td>\r\n        <td width=\"38\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n      </tr>\r\n      ");
	}	//end loop


	if (totalcount<1)
	{

	templateBuilder.Append("\r\n      <tr><td align=\"center\">暂无记录</td></tr>\r\n      ");
	}	//end if


	templateBuilder.Append("\r\n    </table>\r\n    \r\n    <div class=\"page_foot\">\r\n      <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist1));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n      <div class=\"page_btns\">\r\n        <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n        <span class=\"pipe\">|</span>\r\n        <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n      </div>\r\n    </div>\r\n    <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\" />\r\n    <!--系统消息-->\r\n    \r\n    <!--收件箱-->\r\n    ");
	}
	else if (action=="accept")
	{

	templateBuilder.Append("\r\n    <div class=\"tab_head\">\r\n      <a class=\"add\" href=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\">+ 写新消息</a>\r\n      <ul class=\"tabs\">\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a></li>\r\n      </ul>\r\n    </div>\r\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n      ");
	DataTable list2 = get_user_message_list(10, page, "accept_user_name='"+userModel.user_name+"' and type=2", out totalcount);
	

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	string pagelist2 = get_page_link(10, page, totalcount, "usermessage1", action, "__id__");
	

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n      ");
	int dr__loop__id=0;
	foreach(DataRow dr in list2.Rows)
	{
		dr__loop__id++;


	templateBuilder.Append("\r\n      <tr>\r\n        <td width=\"20\" align=\"center\">\r\n          ");
	if (Utils.ObjectToStr(dr["is_read"])=="1")
	{

	templateBuilder.Append("\r\n          <img title=\"已读\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/pm_1.gif\">\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <img title=\"未读\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/pm_0.gif\">\r\n          ");
	}	//end if


	templateBuilder.Append("\r\n        </td>\r\n        <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n        <td width=\"60\" align=\"center\">\r\n          ");
	string user_avatar = get_user_avatar(Utils.ObjectToStr(dr["post_user_name"]));
	

	if (user_avatar=="")
	{

	templateBuilder.Append("\r\n          <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/icon_avatar.gif\" width=\"48\" height=\"48\" />\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(user_avatar));
	templateBuilder.Append("\" width=\"48\" height=\"48\" alt=\"" + Utils.ObjectToStr(dr["post_user_name"]) + "\" />\r\n          ");
	}	//end if


	templateBuilder.Append("\r\n        </td>\r\n        <td><strong>" + Utils.ObjectToStr(dr["post_user_name"]) + "</strong><br /><a href=\"");
	templateBuilder.Append(linkurl("usermessage_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></td>\r\n        <td width=\"150\">" + Utils.ObjectToStr(dr["post_time"]) + "</td>\r\n        <td width=\"30\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n      </tr>\r\n      ");
	}	//end loop


	if (totalcount<1)
	{

	templateBuilder.Append("\r\n      <tr><td align=\"center\">暂无记录</td></tr>\r\n      ");
	}	//end if


	templateBuilder.Append("\r\n    </table>\r\n    \r\n    <div class=\"page_foot\">\r\n      <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist2));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n      <div class=\"page_btns\">\r\n        <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n        <span class=\"pipe\">|</span>\r\n        <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n      </div>\r\n    </div>\r\n    <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\" />\r\n    <!--/收件箱-->\r\n    \r\n    ");
	}
	else if (action=="send")
	{

	templateBuilder.Append("\r\n    <!--发件箱-->\r\n    <div class=\"tab_head\">\r\n      <a class=\"add\" href=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\">+ 写新消息</a>\r\n      <ul class=\"tabs\">\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a></li>\r\n        <li class=\"selected\"><a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a></li>\r\n      </ul>\r\n    </div>\r\n    <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"mtable\">\r\n      ");
	DataTable list3 = get_user_message_list(10, page, "post_user_name='"+userModel.user_name+"' and type=3", out totalcount);
	

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n      ");
	string pagelist3 = get_page_link(10, page, totalcount, "usermessage1", action, "__id__");
	

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n      ");
	int dr__loop__id=0;
	foreach(DataRow dr in list3.Rows)
	{
		dr__loop__id++;


	templateBuilder.Append("\r\n      <tr>\r\n        <td width=\"20\" align=\"center\"><input name=\"checkId\" class=\"checkall\" type=\"checkbox\" value=\"" + Utils.ObjectToStr(dr["id"]) + "\" ></td>\r\n        <td width=\"60\" align=\"center\">\r\n          ");
	string user_avatar = get_user_avatar(Utils.ObjectToStr(dr["accept_user_name"]));
	

	if (user_avatar=="")
	{

	templateBuilder.Append("\r\n          <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/icon_avatar.gif\" width=\"48\" height=\"48\" />\r\n          ");
	}
	else
	{

	templateBuilder.Append("\r\n          <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(user_avatar));
	templateBuilder.Append("\" width=\"48\" height=\"48\" alt=\"" + Utils.ObjectToStr(dr["accept_user_name"]) + "\" />\r\n          ");
	}	//end if


	templateBuilder.Append("\r\n        </td>\r\n        <td><strong>" + Utils.ObjectToStr(dr["accept_user_name"]) + "</strong><br /><a href=\"");
	templateBuilder.Append(linkurl("usermessage_show",Utils.ObjectToStr(dr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(dr["title"]) + "</a></td>\r\n        <td width=\"150\">" + Utils.ObjectToStr(dr["post_time"]) + "</td>\r\n        <td width=\"30\"><a onclick=\"ExecPostBack('" + Utils.ObjectToStr(dr["id"]) + "');\" href=\"javascript:;\">删除</a></td>\r\n      </tr>\r\n      ");
	}	//end loop


	if (totalcount<1)
	{

	templateBuilder.Append("\r\n      <tr><td align=\"center\">暂无记录</td></tr>\r\n      ");
	}	//end if


	templateBuilder.Append("\r\n    </table>\r\n    \r\n    <div class=\"page_foot\">\r\n      <div class=\"flickr right\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist3));
	templateBuilder.Append("</div><!--放置页码列表-->\r\n      <div class=\"page_btns\">\r\n        <a onclick=\"checkAll(this);\" href=\"javascript:;\">全选</a>\r\n        <span class=\"pipe\">|</span>\r\n        <a onclick=\"ExecPostBack();\" href=\"javascript:;\">删除</a>\r\n      </div>\r\n    </div>\r\n    <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\" />\r\n    <!--、发件箱-->\r\n    \r\n    ");
	}
	else if (action=="add")
	{

	templateBuilder.Append("\r\n    <!--发布短信息-->\r\n    <link rel=\"stylesheet\" href=\"");
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
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n      $(function(){\r\n	    //初始化表单\r\n		AjaxInitForm('add_form', 'btnSubmit', 1, 'turl');\r\n	  });\r\n    </");
	templateBuilder.Append("script>\r\n    <div class=\"tab_head\">\r\n      <ul class=\"tabs\">\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","accept"));

	templateBuilder.Append("\">收件箱</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","system"));

	templateBuilder.Append("\">系统消息</a></li>\r\n        <li><a href=\"");
	templateBuilder.Append(linkurl("usermessage","send"));

	templateBuilder.Append("\">发件箱</a></li>\r\n      </ul>\r\n    </div>\r\n    <div class=\"line10\"></div>\r\n    <form id=\"add_form\" name=\"add_form\" url=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/submit_ajax.ashx?action=user_message_add\">\r\n      <div class=\"form_box\">\r\n        <dl>\r\n          <dt>收件人：</dt>\r\n          <dd><input name=\"txtUserName\" id=\"txtUserName\" type=\"text\" class=\"input txt required\" maxlength=\"50\" /></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>标题：</dt>\r\n          <dd><input name=\"txtTitle\" id=\"txtTitle\" type=\"text\" class=\"input txt required\" maxlength=\"100\" /></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt>内容：</dt>\r\n          <dd><textarea name=\"txtContent\" class=\"input required\" style=\"width:250px;height:80px;\"></textarea></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt></dt>\r\n          <dd>\r\n            <label><input name=\"sendSave\" type=\"checkbox\" value=\"true\" checked=\"checked\" />保存到发件箱</label></dd>\r\n        </dl>\r\n        <dl>\r\n          <dt></dt>\r\n          <dd>\r\n            <input id=\"txtCode\" name=\"txtCode\" class=\"input small required\" type=\"text\" maxlength=\"50\" style=\"ime-mode:disabled;text-transform:uppercase;\">\r\n              <a id=\"verifyCode\" href=\"javascript:;\" onclick=\"ToggleCode(this, '");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx');return false;\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("tools/verify_code.ashx\" width=\"80\" height=\"22\" /> 看不清楚？</a>\r\n          </dd>\r\n        </dl>\r\n        <dl>\r\n          <dt></dt>\r\n          <dd><input name=\"btnSubmit\" id=\"btnSubmit\" type=\"submit\" class=\"btn_submit\" value=\"确认发布\" /></dd>\r\n        </dl>\r\n      </div>\r\n    </form>\r\n    <input id=\"turl\" type=\"hidden\" value=\"");
	templateBuilder.Append(linkurl("usermessage","add"));

	templateBuilder.Append("\" />\r\n    <!--/发布短信息-->\r\n    ");
	}	//end if


	templateBuilder.Append("\r\n    \r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append(" <div class=\"footer\">\r\n            <div class=\"footercenter\">\r\n            <p><span>\r\n			<a class=\"footera\" href=\"./contact/index.html\">联系我们</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/sitemap.html\">法律声明</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/falv.html\">招聘信息</a><span> | </span>\r\n            <a class=\"footera\" href=\"http://www.miibeian.gov.cn/\" target=\"_blank\">湘ICP备12013776号</a>\r\n			</span><br /><br />\r\n            <span class=\"copyri\">Copyright ⓒ 20012  UWILL.ORG.CN. All rights reserved.  版权所有 优为精英教育机构</span>\r\n        	</p>\r\n            <div class=\"partner\">\r\n                <span style=\"font-family:'微软雅黑', '宋体';font-size:14px;color:#124a85;letter-spacing:2px;padding:0;margin:0;\">合作机构</span>\r\n                <select onchange=\"openerLink(this.value);\" class=\"partnerselect\">\r\n                <option value=\"-1\">【合作机构】</option> \r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;民生银行</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;崇尚百货</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;北大青鸟</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;雨花西餐厅</option>\r\n                <option value=\"-1\">【友情链接】</option>\r\n                <option value=\"http://www.baidu.com\">&nbsp;&nbsp;&nbsp;&nbsp;百度</option>\r\n                </select><br /><br />\r\n                <div class=\"qrcode\">\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/qrcode_for_gh_238f347649d8_258.jpg\" width=\"100\" height=\"100\" />\r\n                </div>\r\n            </div>\r\n            </div>\r\n    </div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
