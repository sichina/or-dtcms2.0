<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.download_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created at 2013-4-15 15:39:27.
		本页面代码生成于 2013-4-15 15:39:27. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const int channel_id = 4;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(category_id,"资源下载");
	

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<link media=\"screen\" type=\"text/css\" href=\"");
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


	templateBuilder.Append("\r\n<!--/Header-->\r\n\r\n<div class=\"boxwrap\">\r\n  <div class=\"left710\">\r\n   <!--Content-->\r\n    <div class=\"main_box\">\r\n      ");
	string category_nav = get_category_menu("down_list1", category_id);
	

	templateBuilder.Append("\r\n      <dl class=\"head green\">\r\n        <dt>资源下载</dt>\r\n        <dd>\r\n          <span>当前位置：<a href=\"");
	templateBuilder.Append(linkurl("index",""));

	templateBuilder.Append("\">首页</a> &gt; <a href=\"");
	templateBuilder.Append(linkurl("down",""));

	templateBuilder.Append("\">资源下载</a>");
	templateBuilder.Append(Utils.ObjectToStr(category_nav));
	templateBuilder.Append("</span>\r\n        </dd>\r\n      </dl>\r\n      <div class=\"clear\"></div>\r\n      <h1 class=\"base_tit\">分类“");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("”的内容</h1>\r\n      <ul class=\"down_list\">\r\n        ");
	DataTable down_list = get_download_list(channel_id, category_id, 10, page, "", out totalcount);
	

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n        ");
	string pagelist = get_page_link(10, page, totalcount, "down_list1", category_id, "__id__");
	

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n        ");
	int listdr__loop__id=0;
	foreach(DataRow listdr in down_list.Rows)
	{
		listdr__loop__id++;


	templateBuilder.Append("\r\n        <li>\r\n          <a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(listdr["id"])));

	templateBuilder.Append("\" class=\"pic\"><img width=\"140\" height=\"98\" src=\"" + Utils.ObjectToStr(listdr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(listdr["title"]) + "\" /></a>\r\n          <h2><a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(listdr["id"])));

	templateBuilder.Append("\" title=\"note\">" + Utils.ObjectToStr(listdr["title"]) + "</a></h2>\r\n          <div class=\"info\">\r\n            <span class=\"time\">" + Utils.ObjectToStr(listdr["add_time"]) + "</span>\r\n            <span class=\"comm\">");
	templateBuilder.Append(get_comment_count(Utils.StrToInt(Utils.ObjectToStr(listdr["id"]), 0), "is_lock=0").ToString());
	

	templateBuilder.Append("人评论</span>\r\n            <span class=\"view\">" + Utils.ObjectToStr(listdr["click"]) + "次浏览</span>\r\n          </div>\r\n          <div class=\"note\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(listdr["content"]),255));

	templateBuilder.Append("</div>\r\n        </li>\r\n        ");
	}	//end loop


	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <div class=\"line20\"></div>\r\n    <div class=\"flickr\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div> <!--放置页码列表-->\r\n    <!--/Content-->\r\n  </div>\r\n  \r\n  <div class=\"left264\">\r\n    <!--Sidebar-->\r\n    <div class=\"sidebar\">\r\n      <h3>资源类别</h3>\r\n      <ul>\r\n        ");
	DataTable category_list1 = get_category_list(channel_id, 0);
	

	int cdr1__loop__id=0;
	foreach(DataRow cdr1 in category_list1.Rows)
	{
		cdr1__loop__id++;


	templateBuilder.Append("\r\n        <li><a title=\"" + Utils.ObjectToStr(cdr1["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\"><em class=\"arrow\">&gt;</em>" + Utils.ObjectToStr(cdr1["title"]) + "</a></li>\r\n        ");
	}	//end loop


	templateBuilder.Append("\r\n      </ul>\r\n      <h3>推荐资源</h3>\r\n      <div class=\"focus_list\">\r\n        <ul>\r\n          ");
	DataTable reddown = get_download_list(channel_id, 0, 6, "is_red=1 and img_url<>''");
	

	int reddr__loop__id=0;
	foreach(DataRow reddr in reddown.Rows)
	{
		reddr__loop__id++;


	templateBuilder.Append("\r\n          <li>\r\n            <a title=\"" + Utils.ObjectToStr(reddr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(reddr["id"])));

	templateBuilder.Append("\">\r\n              <img src=\"" + Utils.ObjectToStr(reddr["img_url"]) + "\" width=\"100\" height=\"100\" alt=\"" + Utils.ObjectToStr(reddr["title"]) + "\" />\r\n              <span>" + Utils.ObjectToStr(reddr["title"]) + "</span>\r\n            </a>\r\n          </li>\r\n          ");
	}	//end loop


	templateBuilder.Append("\r\n        </ul>\r\n        <div class=\"clear\"></div>\r\n      </div>\r\n      <h3>下载排行</h3>\r\n      <ul class=\"rank_list\">\r\n        ");
	DataTable hotdown = get_download_list(channel_id, 0, 10, "", "click desc,id desc");
	

	int hotdr__loop__id=0;
	foreach(DataRow hotdr in hotdown.Rows)
	{
		hotdr__loop__id++;


	if (hotdr__loop__id==1)
	{

	templateBuilder.Append("\r\n        <li class=\"active\">\r\n        ");
	}
	else
	{

	templateBuilder.Append("\r\n        <li>\r\n        ");
	}	//end if


	templateBuilder.Append("\r\n          <span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hotdr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span>\r\n          <i class=\"num\">");
	templateBuilder.Append(hotdr__loop__id.ToString());
	

	templateBuilder.Append("</i><a href=\"");
	templateBuilder.Append(linkurl("down_show",Utils.ObjectToStr(hotdr["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(hotdr["title"]) + "</a>\r\n        </li>\r\n        ");
	}	//end loop


	templateBuilder.Append("\r\n      </ul>\r\n    </div>\r\n    <!--/Sidebar-->\r\n  </div>\r\n</div>\r\n\r\n<div class=\"clear\"></div>\r\n\r\n<!--Footer-->\r\n");

	templateBuilder.Append(" <div class=\"footer\">\r\n            <div class=\"footercenter\">\r\n            <p><span>\r\n			<a class=\"footera\" href=\"./contact/index.html\">联系我们</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/sitemap.html\">法律声明</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/falv.html\">招聘信息</a><span> | </span>\r\n            <a class=\"footera\" href=\"http://www.miibeian.gov.cn/\" target=\"_blank\">湘ICP备12013776号</a>\r\n			</span><br /><br />\r\n            <span class=\"copyri\">Copyright ⓒ 20012  UWILL.ORG.CN. All rights reserved.  版权所有 优为精英教育机构</span>\r\n        	</p>\r\n            <div class=\"partner\">\r\n                <span style=\"font-family:'微软雅黑', '宋体';font-size:14px;color:#124a85;letter-spacing:2px;padding:0;margin:0;\">合作机构</span>\r\n                <select onchange=\"openerLink(this.value);\" class=\"partnerselect\">\r\n                <option value=\"-1\">【合作机构】</option> \r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;民生银行</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;崇尚百货</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;北大青鸟</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;雨花西餐厅</option>\r\n                <option value=\"-1\">【友情链接】</option>\r\n                <option value=\"http://www.baidu.com\">&nbsp;&nbsp;&nbsp;&nbsp;百度</option>\r\n                </select><br /><br />\r\n                <div class=\"qrcode\">\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/qrcode_for_gh_238f347649d8_258.jpg\" width=\"100\" height=\"100\" />\r\n                </div>\r\n            </div>\r\n            </div>\r\n    </div>");


	templateBuilder.Append("\r\n<!--/Footer-->\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
