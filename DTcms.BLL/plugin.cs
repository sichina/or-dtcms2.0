using System;
using System.Collections.Generic;
using System.Text;

namespace DTcms.BLL
{
    public partial class plugin
    {
        private readonly DAL.plugin dal = new DAL.plugin();

        public plugin() { }

        /// <summary>
        /// 返回业务模块列表
        /// </summary>
        /// <param name="dirPath">站点下的业务模块路径(物理路径)</param>
        public List<Model.plugin> GetList(string dirPath)
        {
            return dal.GetList(dirPath);
        }

        /// <summary>
        /// 返回业务模块说明信息
        /// </summary>
        /// <param name="dirPath">业务模块目录路径(不包含文件名)</param>
        /// <returns>业务模块配置信息</returns>
        public Model.plugin GetInfo(string dirPath)
        {
            return dal.GetInfo(dirPath);
        }

        /// <summary>
        /// 修改业务模块节点数据
        /// </summary>
        /// <param name="dirPath">业务模块目录路径</param>
        /// <param name="node">节点</param>
        /// <param name="value">值</param>
        /// <returns></returns>
        public bool UpdateNodeValue(string dirPath, string node, string value)
        {
            return dal.UpdateNodeValue(dirPath, node, value);
        }

        /// <summary>
        /// 执行业务模块SQL语句
        /// </summary>
        /// <param name="dirPath">业务模块目录路径</param>
        /// <param name="xPath">节点</param>
        public bool ExeSqlStr(string dirPath, string xPath)
        {
            return dal.ExeSqlStr(dirPath, xPath);
        }

        /// <summary>
        /// 添加URL映射节点
        /// </summary>
        /// <param name="dirPath">业务模块目录路径</param>
        /// <param name="xPath">节点</param>
        public bool AppendNodes(string dirPath, string xPath)
        {
            return dal.AppendNodes(dirPath, xPath);
        }

        /// <summary>
        /// 删除URL映射节点
        /// </summary>
        /// <param name="dirPath">业务模块目录路径</param>
        /// <param name="xPath">节点</param>
        public bool RemoveNodes(string dirPath, string xPath)
        {
            return dal.RemoveNodes(dirPath, xPath);
        }

    }
}
