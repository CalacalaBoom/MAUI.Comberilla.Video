using System;
using System.Collections.Generic;
using System.Linq;
using SqlSugar;
namespace Backend.Core.Models
{
    /// <summary>
    /// 
    ///</summary>
    [SugarTable("mac_collect")]
    public class MacCollect
    {
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="collect_id" ,IsPrimaryKey = true ,IsIdentity = true  )]
         public int CollectId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="collect_name"    )]
         public string CollectName { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="collect_url"    )]
         public string CollectUrl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 1
        ///</summary>
         [SugarColumn(ColumnName="collect_type"    )]
         public string CollectType { get; set; }
        /// <summary>
        ///  
        /// 默认值: 1
        ///</summary>
         [SugarColumn(ColumnName="collect_mid"    )]
         public string CollectMid { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="collect_appid"    )]
         public string CollectAppid { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="collect_appkey"    )]
         public string CollectAppkey { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="collect_param"    )]
         public string CollectParam { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="collect_filter"    )]
         public string CollectFilter { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="collect_filter_from"    )]
         public string CollectFilterFrom { get; set; }
        /// <summary>
        /// 采集时，过滤年份 
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="collect_filter_year"    )]
         public string CollectFilterYear { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="collect_opt"    )]
         public string CollectOpt { get; set; }
        /// <summary>
        /// 同步图片选项，0-跟随全局，1-开启，2-关闭 
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="collect_sync_pic_opt"    )]
         public string CollectSyncPicOpt { get; set; }
    }
}
