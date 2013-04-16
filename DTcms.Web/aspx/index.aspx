<%@ Page Language="C#" AutoEventWireup="true" Inherits="DTcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="DTcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created at 2013-4-16 15:44:18.
		本页面代码生成于 2013-4-16 15:44:18. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n<title>");
	templateBuilder.Append(Utils.ObjectToStr(config.webtitle));
	templateBuilder.Append("</title>\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webkeyword));
	templateBuilder.Append("\" name=\"keywords\">\r\n<meta content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webdescription));
	templateBuilder.Append("\" name=\"description\">\r\n<link href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/css/uwill.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<script type=\"text/javascript\" src=\"");
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
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/js/base.js\"></");
	templateBuilder.Append("script>\r\n<script type=\"text/javascript\">\r\n	$(function(){\r\n		var jqDockOpts = {align: 'center', duration: 200, labels: 'tc', size: 140, distance: 100};\r\n		$('#jqDock').jqDock(jqDockOpts);\r\n	});\r\n	$(document).ready(function() {\r\n	var myar = setInterval('AutoScroll(\"#scrollDiv\")', 3000)\r\n	$(\"#scrollDiv\").hover(function() { clearInterval(myar); }, function() { myar = setInterval('AutoScroll(\"#scrollDiv\")', 3000) }); //当鼠标放上去的时候，滚动停止，鼠标离开的时候滚动开始\r\n    });\r\n</");
	templateBuilder.Append("script>\r\n    <script language=\"javascript\" type=\"text/javascript\">\r\n        $(function () {\r\n            PicHover(\".banner_title\", \".banner_pic\");\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n</head>\r\n\r\n<body>\r\n<div class=\"main\">\r\n    <div class=\"container_12\">\r\n	");

	templateBuilder.Append("    <!--菜单-->\r\n        <div class=\"grid_12 indexmenu  mt10\">\r\n            <div class=\"grid_3 logo alpha\">\r\n            <a href=\"http://www.uwill.org.cn\" target=\"_self\" title=\"优为精英教育机构网站\" ><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/logo.png\" width=\"169\" height=\"60\" alt=\"优为精英教育网站LOGO\" /></a></div>\r\n            <div class=\"grid_9 omega\">\r\n                <div class=\"grid_7 alpha\">\r\n                    <div class=\"grid_7 menu\">\r\n                        <ul>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"优为课程表\"><div style=\" background-image:url(");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/dotdot_27.png); background-position:top left; background-repeat:no-repeat;\" ><span id=\"menuspan\">课程表</span></div></a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"关于优为\">关于优为</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"精彩活动\">精彩活动</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"会员服务\">会员服务</a></li>\r\n                            <li><a href=\"#\" target=\"_self\" title=\"资料下载\">资料下载</a></li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class=\"clear\"></div>\r\n                    <div class=\"grid_7 submenu\">\r\n                        <div class=\"subleft\"></div>\r\n                        <div class=\"subcon\">\r\n                            <ul>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"全年龄段学习计划\" target=\"_blank\">全年龄段学习计划</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"NLP亲子学堂\" target=\"_blank\">NLP亲子学堂</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"国际夏冬令营\" target=\"_blank\">国际夏冬令营</a></li>\r\n                                <li><a class=\"submenulink\" href=\"#\" title=\"出国留学顾问\" target=\"_blank\">出国留学顾问</a></li>\r\n                            </ul>\r\n                        </div>\r\n                        <div class=\"subright\"></div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"grid_2 omega\">\r\n                    <div class=\"mt8 listmenubg\"><a  class=\"listmenu\" href=\"javascript:window.external.AddFavorite('http://www.uwill.org.cn','优为精英教育机构-一切为了孩子，为了一切孩子，为了孩子一切')\" title=\"\">收藏网站</a></div>\r\n                    <div class=\"mt8 listmenubg\"><a class=\"listmenu\" href=\"\" title=\"\">设为首页</a></div>\r\n                </div>\r\n            </div>\r\n      </div>\r\n    <div class=\"clear\"></div>");


	templateBuilder.Append("\r\n    <!--主图-->\r\n    <div class=\"grid_12\">\r\n        <div class=\"grid_9 alpha\">\r\n        <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/mainpic_03.png\" width=\"668\" height=\"295\" />\r\n        </div>\r\n        <div class=\"grid_3 omega\">\r\n                <div id=\"dockContainer\">\r\n                    <ul id=\"jqDock\">\r\n                        <li><a class=\"dockItem\" href=\"index.html\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/ad_ico2_03.png\" alt=\"Home\" /></a></li>\r\n                        <li><a class=\"dockItem\" href=\"example2.html\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/ad_ico2_03.png\" alt=\"Contact\" /></a></li>\r\n                        <li><a class=\"dockItem\" href=\"example3.html\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/ad_ico2_03.png\" alt=\"portfolio\" /></a></li>\r\n                    </ul>\r\n                </div><!-- end div #dockContainer -->\r\n        </div>\r\n        <div class=\"clear\"></div>\r\n    </div>\r\n    <div class=\"grid_12\">\r\n        <div class=\"grid_9 searchbg alpha\">\r\n            <div id=\"scrollDiv\">\r\n                <ul>\r\n                ");
	DataTable uwillnews = get_news_list(1, 33, 20,"is_lock=0","add_time desc");
	

	int newsdr__loop__id=0;
	foreach(DataRow newsdr in uwillnews.Rows)
	{
		newsdr__loop__id++;


	templateBuilder.Append("\r\n                	<li><a class=\"soroll\" title=\"" + Utils.ObjectToStr(newsdr["title"]) + "\" target=\"_blank\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newsdr["id"])));

	templateBuilder.Append("\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(newsdr["content"]),45));

	templateBuilder.Append("</a></li>\r\n                ");
	}	//end loop


	templateBuilder.Append("\r\n                </ul>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <div class=\"grid_12 mt10\">\r\n        <div class=\"grid_9 alpha\">\r\n            <div class=\"grid_3 alpha\">\r\n                <div><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/freeappoint.png\" width=\"220\" height=\"28\" /></div>\r\n                <div>\r\n                <form action=\"freeappoint.aspx\" method=\"post\" name=\"sub_freeApp\" target=\"_blank\">\r\n                    <table class=\"tb_appoint\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tr>\r\n                        <td>学员姓名：</td>\r\n                        <td><input class=\"inputstyle\" name=\"a_name\" type=\"text\" maxlength=\"20\" /></td>\r\n                      </tr>\r\n                      <!--<tr>\r\n                        <td>学院年龄：</td>\r\n                        <td><select name=\"a_age\"><option>1</option></select></td>\r\n                      </tr>-->\r\n                      <tr>\r\n                        <td>联系手机：</td>\r\n                        <td><input class=\"inputstyle\" name=\"a_phone\" type=\"text\" /></td>\r\n                      </tr>\r\n                        <tr>\r\n                        <td>验证码：</td>\r\n                        <td><input class=\"iptsmall\" name=\"a_code\" type=\"text\" /><img src=\"../tools/verify_code.ashx\" width=\"70\" height=\"22\" alt=\"点击切换验证码\" title=\"点击切换验证码\" style=\"margin-left:5px;vertical-align:top;cursor:pointer;\" onclick=\"ToggleImgCode(this, '../tools/verify_code.ashx');return false;\" /></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td colspan=\"2\"><input type=\"image\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/sub_button1.png\" alt=\"免费预约试听课程\" height=\"24px\" width=\"122px\" /><span class=\"f_right\"><a class=\"redemp\" href=\"");
	templateBuilder.Append(linkurl("content","privacy"));

	templateBuilder.Append("\" title=\"客户联系方式隐私保护条款\" target=\"_blank\">*隐私保护条款</a></span></td>\r\n                      </tr>\r\n                    </table>\r\n                </form>\r\n                </div>\r\n            </div>\r\n            <div class=\"grid_6 omega\">\r\n                <div class=\"subpic\">\r\n                  <div id=\"banner\">\r\n                    <div class=\"banner_title\">\r\n                    <ul>\r\n                    ");
	DataTable classlist = get_news_list(1, 37, 5, "is_lock=0");
	

	int classdr__loop__id=0;
	foreach(DataRow classdr in classlist.Rows)
	{
		classdr__loop__id++;


	templateBuilder.Append("\r\n                    <li><h1><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(classdr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(classdr["title"]) + "\" target=\"_blank\"  class=\"selected\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(classdr["content"]),15));

	templateBuilder.Append("</a></h1></li>\r\n                    ");
	}	//end loop


	templateBuilder.Append("\r\n                    </ul>\r\n        \r\n                    </div>\r\n                    <div class=\"banner_pic\">\r\n                        \r\n                    <ul>\r\n                    ");
	DataTable classlist1 = get_news_list(1, 37, 5, "is_lock=0");
	

	int classdr1__loop__id=0;
	foreach(DataRow classdr1 in classlist1.Rows)
	{
		classdr1__loop__id++;


	templateBuilder.Append("\r\n                    <li><a href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(classdr1["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(classdr1["title"]) + "\" target=\"_blank\"><img src=\"" + Utils.ObjectToStr(classdr1["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(classdr1["title"]) + "\" height=\"142\" width=\"308\"/></a></li>\r\n                    ");
	}	//end loop


	templateBuilder.Append("\r\n                    </ul>\r\n            \r\n                    </div>\r\n                  </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"grid_3 omega\">\r\n            <div class=\"right_clum\">\r\n                <div class=\"right_title\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/contact_01.png\" width=\"220\" height=\"28\" /></div>\r\n                <div class=\"t_contact\"><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/contact_02.png\" width=\"220\" height=\"127\" /></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    <div class=\"grid_12 mt10\">\r\n    	<div class=\"grid_9 alpha\">\r\n        	<div class=\"grid_3 alpha\">\r\n            	<div class=\"newtitlebg\">\r\n                <h2>最新活动</h2>\r\n                </div>\r\n              <div class=\"newsindexlist\">\r\n              <ul>\r\n              ");
	DataTable hdlist = get_news_list(1, 34, 7, "is_lock=0");
	

	int hddr__loop__id=0;
	foreach(DataRow hddr in hdlist.Rows)
	{
		hddr__loop__id++;


	templateBuilder.Append("\r\n                <li><a class=\"nl\" href=\"");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(hddr["id"])));

	templateBuilder.Append("\" title=\"" + Utils.ObjectToStr(hddr["title"]) + " target=\"_blank\">");
	templateBuilder.Append(Utils.DropHTML(Utils.ObjectToStr(hddr["content"]),26));

	templateBuilder.Append("</a><span>");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(hddr["add_time"])).ToString("MM-dd"));

	templateBuilder.Append("</span> </li>\r\n              ");
	}	//end loop


	templateBuilder.Append("\r\n              </ul>\r\n              </div>\r\n          </div>\r\n            <div class=\"grid_6 alpha\">\r\n            	<div class=\"idxteacherbg\"></div>\r\n                       <div class=\"rollBox\">\r\n                    <div class=\"LeftBotton\" onmousedown=\"ISL_GoUp()\" onmouseout=\"ISL_StopUp()\" onmouseup=\"ISL_StopUp()\">\r\n                        &nbsp;</div>\r\n                    <div class=\"Cont\" id=\"ISL_Cont\">\r\n                        <div class=\"ScrCont\">\r\n                            <div id=\"List1\">\r\n                                <!-- 图片列表 begin -->\r\n                                ");
	DataTable lslist = get_news_list(1, 42, 20, "is_lock=0");
	

	int lsdr__loop__id=0;
	foreach(DataRow lsdr in lslist.Rows)
	{
		lsdr__loop__id++;


	templateBuilder.Append("\r\n                                <div class=\"pic\">\r\n                                    <img alt=\"" + Utils.ObjectToStr(lsdr["title"]) + "\" onclick=\"\" src=\"" + Utils.ObjectToStr(lsdr["img_url"]) + "\" style=\"cursor: pointer;\" title=\"" + Utils.ObjectToStr(lsdr["title"]) + "\" /></div>                                \r\n                                ");
	}	//end loop


	templateBuilder.Append("\r\n                                <!-- 图片列表 end --></div>\r\n                            <div id=\"List2\">\r\n                                &nbsp;</div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"RightBotton\" onmousedown=\"ISL_GoDown()\" onmouseout=\"ISL_StopDown()\" onmouseup=\"ISL_StopDown()\">\r\n                        &nbsp;</div>\r\n                </div>\r\n                <script language=\"javascript\" type=\"text/javascript\">\r\n					var Speed = 0.01; //速度(毫秒)\r\n					var Space = 20; //每次移动(px)\r\n					var PageWidth = 420; //翻页宽度\r\n					var fill = 0; //整体移位\r\n					var MoveLock = true;\r\n					var MoveTimeObj;\r\n					var Comp = 0;\r\n					var AutoPlayObj = null;\r\n					GetObj(\"List2\").innerHTML = GetObj(\"List1\").innerHTML;\r\n					GetObj('ISL_Cont').scrollLeft = fill;\r\n					GetObj(\"ISL_Cont\").onmouseover = function(){\r\n						clearInterval(AutoPlayObj);\r\n						}\r\n					GetObj(\"ISL_Cont\").onmouseout = function(){\r\n						AutoPlay();\r\n						}\r\n					AutoPlay(); \r\n                </");
	templateBuilder.Append("script>\r\n            </div>\r\n            <!--<div class=\"grid_3 alpha mt10\"><img src=\"images/adv1.png\" width=\"220\" height=\"150\" /></div>-->\r\n            <div class=\"grid_3 alpha mt10\">\r\n            ");
	DataTable xmxlist = get_news_list(1, 43, 1,"is_lock=0");
	

	int xmxdr__loop__id=0;
	foreach(DataRow xmxdr in xmxlist.Rows)
	{
		xmxdr__loop__id++;


	templateBuilder.Append("\r\n            <img src=\"" + Utils.ObjectToStr(xmxdr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(xmxdr["title"]) + "\" width=\"220\" height=\"189\" />\r\n            ");
	}	//end loop


	templateBuilder.Append("\r\n            </div>\r\n            <div class=\"grid_6 alpha mt10\">\r\n                <div class=\"cctvstarbg\"></div>\r\n                <div class=\"iphoto_list\">\r\n                	    <div class=\"list\">\r\n                          <ul>\r\n                            ");
	DataTable hdphotolist = get_news_list(3, 0, 6, "is_lock=0 and is_red=1");
	

	int hdphotodr__loop__id=0;
	foreach(DataRow hdphotodr in hdphotolist.Rows)
	{
		hdphotodr__loop__id++;


	templateBuilder.Append("\r\n                            <li class=\"a");
	templateBuilder.Append(hdphotodr__loop__id.ToString());
	

	templateBuilder.Append("\">\r\n                              <img src=\"" + Utils.ObjectToStr(hdphotodr["img_url"]) + "\" alt=\"" + Utils.ObjectToStr(hdphotodr["title"]) + "\" />\r\n                              <a title=\"" + Utils.ObjectToStr(hdphotodr["title"]) + "\" href=\"");
	templateBuilder.Append(linkurl("photo_show",Utils.ObjectToStr(hdphotodr["id"])));

	templateBuilder.Append("\">查看详情</a><i class=\"absbg\"></i>\r\n                            </li>\r\n                            ");
	}	//end loop


	templateBuilder.Append("\r\n                          </ul>\r\n                        </div>\r\n\r\n                </div>\r\n          </div>\r\n        </div>\r\n        ");

	templateBuilder.Append("        <!--微博秀-->\r\n        <div class=\"grid_3 omega\">\r\n            <iframe width=\"220\" height=\"417\" class=\"share_self\"  frameborder=\"0\" scrolling=\"no\" src=\"http://widget.weibo.com/weiboshow/index.php?language=&width=220&height=417&fansRow=1&ptype=1&speed=0&skin=9&isTitle=1&noborder=1&isWeibo=1&isFans=0&uid=1406608827&verifier=2b0f09b7&dpc=1\"></iframe>\r\n        </div>\r\n        <!--微博秀结束-->");


	templateBuilder.Append("\r\n    </div>\r\n    <div class=\"clear\"></div>\r\n    </div><!-- end container_12 -->\r\n</div><!-- end Main -->\r\n     ");

	templateBuilder.Append(" <div class=\"footer\">\r\n            <div class=\"footercenter\">\r\n            <p><span>\r\n			<a class=\"footera\" href=\"./contact/index.html\">联系我们</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/sitemap.html\">法律声明</a><span> | </span>\r\n            <a class=\"footera\" href=\"./pages/falv.html\">招聘信息</a><span> | </span>\r\n            <a class=\"footera\" href=\"http://www.miibeian.gov.cn/\" target=\"_blank\">湘ICP备12013776号</a>\r\n			</span><br /><br />\r\n            <span class=\"copyri\">Copyright ⓒ 20012  UWILL.ORG.CN. All rights reserved.  版权所有 优为精英教育机构</span>\r\n        	</p>\r\n            <div class=\"partner\">\r\n                <span style=\"font-family:'微软雅黑', '宋体';font-size:14px;color:#124a85;letter-spacing:2px;padding:0;margin:0;\">合作机构</span>\r\n                <select onchange=\"openerLink(this.value);\" class=\"partnerselect\">\r\n                <option value=\"-1\">【合作机构】</option> \r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;民生银行</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;崇尚百货</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;北大青鸟</option>\r\n                <option value=\"#\">&nbsp;&nbsp;&nbsp;&nbsp;雨花西餐厅</option>\r\n                <option value=\"-1\">【友情链接】</option>\r\n                <option value=\"http://www.baidu.com\">&nbsp;&nbsp;&nbsp;&nbsp;百度</option>\r\n                </select><br /><br />\r\n                <div class=\"qrcode\">\r\n                <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.templateskin));
	templateBuilder.Append("/images/qrcode_for_gh_238f347649d8_258.jpg\" width=\"100\" height=\"100\" />\r\n                </div>\r\n            </div>\r\n            </div>\r\n    </div>");


	templateBuilder.Append("\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
