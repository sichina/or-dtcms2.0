﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Text;
using DTcms.Common;

namespace DTcms.Web.UI.Page
{
    public partial class news_show : Web.UI.BasePage
    {
        protected int id;
        protected Model.article_news model = new Model.article_news();
        protected Model.sys_channel channel = new Model.sys_channel();
        
        /// <summary>
        /// 重写虚方法,此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {
            id = DTRequest.GetQueryInt("id");
            BLL.article bll = new BLL.article();
            BLL.sys_channel bll_channel = new BLL.sys_channel();
            if (!bll.Exists(id))
            {
                HttpContext.Current.Response.Redirect(config.webpath + "error.aspx?msg=" + Utils.UrlEncode("出错啦，您要浏览的页面不存在或已删除啦！"));
                return;
            }
            model = bll.GetNewsModel(id);
            //浏览数+1
            bll.UpdateField(id, "click=click+1");
            //跳转URL
            if (model.link_url != null)
                model.link_url = model.link_url.Trim();
            if (!string.IsNullOrEmpty(model.link_url))
            {
                HttpContext.Current.Response.Redirect(model.link_url);
            }
            //处理频道
            channel = bll_channel.GetModel(model.channel_id);
        }
    }
}
