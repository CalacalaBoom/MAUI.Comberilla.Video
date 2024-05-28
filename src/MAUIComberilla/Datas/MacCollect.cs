using System;
using System.Collections.Generic;
using System.Linq;
namespace MAUIComberilla.Datas
{
    /// <summary>
    /// 
    ///</summary>
    public class MacCollect
    {
        /// <summary>
        ///  
        ///</summary>
         public int CollectId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         public string CollectName { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         public string CollectUrl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 1
        ///</summary>
         public string CollectType { get; set; }
        /// <summary>
        ///  
        /// 默认值: 1
        ///</summary>
         public string CollectMid { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         public string CollectAppid { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         public string CollectAppkey { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         public string CollectParam { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         public string CollectFilter { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         public string CollectFilterFrom { get; set; }
        /// <summary>
        /// 采集时，过滤年份 
        /// 默认值: 
        ///</summary>
         public string CollectFilterYear { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         public string CollectOpt { get; set; }
        /// <summary>
        /// 同步图片选项，0-跟随全局，1-开启，2-关闭 
        /// 默认值: 0
        ///</summary>
         public string CollectSyncPicOpt { get; set; }
    }
}
