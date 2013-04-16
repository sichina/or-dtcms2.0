using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace DTcms.Web.UI
{
    public partial class BasePage : System.Web.UI.Page
    {

        /// <summary>
        /// 返回当前类别频道模型
        /// </summary>
        /// <param name="category_id">类别ID</param>
        /// <returns>String</returns>
        protected Model.sys_channel get_channel_by_catagoryid(int category_id)
        {
            BLL.category bll = new BLL.category();
            if (bll.Exists(category_id))
            {
                return bll.GetChannelModel(category_id);
            }
            return null; 
        }
        /// <summary>
        /// 返回当前频道模型
        /// </summary>
        /// <param name="channel_id">频道id</param>
        /// <returns>频道模型</returns>
        protected Model.sys_channel get_channel_by_channelid(int channel_id)
        {
            BLL.sys_channel bll=new BLL.sys_channel();
            if (bll.Exists(channel_id))
	        {
		        return bll.GetModel(channel_id);
	        }
            return null;
        }
    }
}
