﻿using System;
using System.Collections.Generic;
using System.Text;

namespace DTcms.Web.UI.Page
{
    public partial class news : Web.UI.BasePage
    {
        protected Model.sys_channel channel;
        /// <summary>
        /// 重写虚方法,此方法将在Init事件前执行
        /// </summary>
        protected override void ShowPage()
        {
            BLL.sys_channel bll = new BLL.sys_channel();
            channel = bll.GetModel(1);
        }
    }
}
