<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.news_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created at 2013-4-20 22:21:05.
		本页面代码生成于 2013-4-20 22:21:05. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const int channel_id = 1;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	string category_title = get_category_title(category_id,"优为资讯");
	

	templateBuilder.Append("\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append(" - ");
	templateBuilder.Append(Utils.ObjectToStr(config.webname));
	templateBuilder.Append("</title>\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/css/uwill.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/pagination.css\" />\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/jquery.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/fisheye-iutil.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/jquery.jqDock.min.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/uwill.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<div class=\"main\">\r\n    <div class=\"container_12\">\r\n	");

	templateBuilder.Append("    <!--[if lte IE 6]> \r\n    <div id=\"ie6-warning\">您正在使用 Internet Explorer 6，在本页面的显示效果可能有差异。建议您升级到 <a href=\"http://www.microsoft.com/china/windows/internet-explorer/\" target=\"_blank\">Internet Explorer 8</a> 或以下浏览器： <a href=\"http://www.mozillaonline.com/\">Firefox</a> / <a href=\"http://www.google.com/chrome/?hl=zh-CN\">Chrome</a> / <a href=\"http://www.apple.com.cn/safari/\">Safari</a> / <a href=\"http://www.operachina.com/\">Opera</a> \r\n    </div> \r\n    <script type=\"text/javascript\"> \r\n    function position_fixed(el, eltop, elleft){ \r\n    // check if this is IE6 \r\n    if(!window.XMLHttpRequest) \r\n    window.onscroll = function(){ \r\n    el.style.top = (document.documentElement.scrollTop + eltop)+\"px\"; \r\n    el.style.left = (document.documentElement.scrollLeft + elleft)+\"px\"; \r\n    } \r\n    else el.style.position = \"fixed\"; \r\n    } \r\n    position_fixed(document.getElementById(\"ie6-warning\"),0, 0); \r\n    </");
	templateBuilder.Append("script> \r\n    <![endif]--> \r\n    <!--菜单-->\r\n        <div class=\"grid_12 indexmenu  mt10\">\r\n            <div class=\"grid_3 logo alpha\">\r\n            <a href=\"http://www.uwill.org.cn\" target=\"_self\" title=\"优为精英教育机构网站\" ><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/logo.png\" width=\"169\" height=\"60\" alt=\"优为精英教育网站LOGO\" /></a></div>\r\n            <div class=\"grid_9 omega\">\r\n                <div class=\"grid_7 alpha\">\r\n                    <div class=\"grid_7 menu\">\r\n                        <ul>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"优为课程表\"><div style=\" background-image:url(");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/dotdot_27.png); background-position:top left; background-repeat:no-repeat;\" ><span id=\"menuspan\">课程表</span></div></a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"关于优为\">关于优为</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"精彩活动\">精彩活动</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"会员服务\">会员服务</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"资料下载\">资料下载</a></li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"clear\"></div>\r\n                    <div class=\"grid_7 submenu\">\r\n                        <div class=\"subleft\"></div>\r\n                        <div class=\"subcon\">\r\n                            <ul>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"全年龄段学习计划\" target=\"_blank\">全年龄段学习计划</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"NLP亲子学堂\" target=\"_blank\">NLP亲子学堂</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"国际夏冬令营\" target=\"_blank\">国际夏冬令营</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"出国留学顾问\" target=\"_blank\">出国留学顾问</a></li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"subright\"></div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"grid_2 omega\">\r\n                    <div class=\"mt8 listmenubg\"><a  class=\"listmenu\" href=\"javascript:window.external.AddFavorite('http://www.uwill.org.cn','优为精英教育机构-一切为了孩子，为了一切孩子，为了孩子一切')\" title=\"\">收藏网站</a></div>\r\n                    <div class=\"mt8 listmenubg\"><a class=\"listmenu\" href=\"\" title=\"\">设为首页</a></div>\r\n                </div>\r\n            </div>\r\n      </div>\r\n    <div class=\"clear\"></div>");


	templateBuilder.Append("\r\n    <!--主图-->\r\n      <div class=\"grid_12\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/sub_bg.png\" width=\"940\" height=\"236\" /></div>\r\n      <div class=\"clear\"></div>\r\n      <div class=\"grid_12 subtop\">\r\n      	<div class=\"grid_3 fix_ml10 alpha\">\r\n       	<div class=\"left_tit_top\">\r\n            	<div class=\"sologon\"><span>优为精英教育</span></div>\r\n                <div class=\"clear\" ></div>\r\n            	<div class=\"cat\"><span>");
	templateBuilder.Append(Utils.ObjectToStr(channel.title));
	templateBuilder.Append("</span></div>\r\n            </div>\r\n            <div class=\"left_tit_content\">\r\n            	<ul>\r\n                    ");
	DataTable category_list1 = get_category_child_list(channel_id, 0);
	

	int cdr1__loop__id=0;
	foreach(DataRow cdr1 in category_list1.Rows)
	{
		cdr1__loop__id++;


	if (Utils.StrToInt(Utils.ObjectToStr(cdr1["id"]), 0)==category_id)
	{

	templateBuilder.Append("\r\n                    <li><a class=\"select\" href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr1["title"]) + "</a></li>\r\n                    ");
	}
	else
	{

	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("news_list",Utils.ObjectToStr(cdr1["id"])));

	templateBuilder.Append("\">" + Utils.ObjectToStr(cdr1["title"]) + "</a></li>\r\n                    ");
	}	//end if


	}	//end loop


	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n            <div class=\"left_tit_bottom\"></div>\r\n            <div class=\"clear\"></div>\r\n            <div class=\"left_contact\">\r\n            <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/left_contact_01.png\" width=\"190\" height=\"16\" /><br />\r\n            <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/left_contact_02.png\" width=\"190\" height=\"102\" /></div>\r\n          <div class=\"left_contact\">\r\n       	  <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/left_contact_adr_01.png\" width=\"190\" height=\"16\" /><br />\r\n          <a href=\"http://j.map.baidu.com/vfp6K\" title=\"优为精英教育机构报名地址：衡阳市雁峰区蒸阳南路崇业写字楼7楼702\" target=\"_blank\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/baidu_adr.png\" width=\"190\" height=\"118\" alt=\"优为学校地址\" /></a>\r\n          </div>\r\n        </div>\r\n        <div class=\"grid_9 fix_ml10 omega\">\r\n        	<div class=\"sub_content\">\r\n            	<div class=\"side\">\r\n                ");
	string sub_menu = get_category_menu("news_list",category_id);
	

	templateBuilder.Append("\r\n                \r\n                	<a href=\"/\">　首页</a>");
	templateBuilder.Append(Utils.ObjectToStr(sub_menu));
	templateBuilder.Append("\r\n                </div>\r\n                <div class=\"clear\"></div>\r\n                <div class=\"bigtitle\">\r\n                	<h1>");
	templateBuilder.Append(Utils.ObjectToStr(category_title));
	templateBuilder.Append("</h1>\r\n                    <h2></h2>\r\n                </div>\r\n                <div class=\"clear\"></div>\r\n                <div class=\"art_list\">\r\n                	<ul>\r\n                      ");
	DataTable news_list = get_news_list(channel_id, category_id, 10, page, "", out totalcount);
	

	templateBuilder.Append(" <!--取得一个DataTable-->\r\n                      ");
	string pagelist = get_page_link(10, page, totalcount, "news_list1", category_id, "__id__");
	

	templateBuilder.Append(" <!--取得分页页码列表-->\r\n                      ");
	int listdr__loop__id=0;
	foreach(DataRow listdr in news_list.Rows)
	{
		listdr__loop__id++;


	templateBuilder.Append("\r\n                      <li>\r\n                        <a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(listdr["id"])));

	templateBuilder.Append("\" title=\"note\">" + Utils.ObjectToStr(listdr["title"]) + "</a><span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(listdr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                      </li>\r\n                      ");
	}	//end loop


	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\"flickr\">");
	templateBuilder.Append(Utils.ObjectToStr(pagelist));
	templateBuilder.Append("</div> <!--放置页码列表-->\r\n        </div>\r\n        <div class=\"clear\"></div>\r\n      </div> \r\n\r\n  </div><!-- end container_12 -->\r\n</div><!-- end Main -->\r\n    ");

	templateBuilder.Append(" <div class=\"footer\">\r\n            <div class=\"footercenter\">\r\n            <p><span>\r\n			<a class=\"footera\" href=\"./contact/index.html\">联系我们</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/sitemap.html\">法律声明</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/falv.html\">招聘信息</a><span> | </span>\r\n            <a class=\"footera\" href=\"http://www.miibeian.gov.cn/\" target=\"_blank\">湘ICP备12013776号</a>\r\n			</span><br /><br />\r\n            <span class=\"copyri\">Copyright ⓒ 20012  UWILL.ORG.CN. All rights reserved.  版权所有 优为精英教育机构</span>\r\n        	</p>\r\n            <div class=\"partner\">\r\n                <span style=\"font-family:'微软雅黑', '宋体';font-size:14px;color:#124a85;letter-spacing:2px;padding:0;margin:0;\">合作机构</span>\r\n                <select onchange=\"openerLink(this.value);\" class=\"partnerselect\">\r\n                <option value=\"-1\">【合作机构】</option> \r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;民生银行</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;崇尚百货</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;北大青鸟</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;雨花西餐厅</option>\r\n                <option value=\"-1\">【友情链接】</option>\r\n                <option value=\"http://www.baidu.com\">&nbsp;&nbsp;&nbsp;&nbsp;百度</option>\r\n                </select><br /><br />\r\n                <div class=\"qrcode\">\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/qrcode_for_gh_238f347649d8_258.jpg\" width=\"100\" height=\"100\" />\r\n                </div>\r\n            </div>\r\n            </div>\r\n    </div>");


	templateBuilder.Append("\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
