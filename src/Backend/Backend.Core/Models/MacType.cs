using System;
using System.Collections.Generic;
using System.Linq;
using SqlSugar;
namespace Backend.Core.Models
{
    /// <summary>
    /// 
    ///</summary>
    [SugarTable("mac_type")]
    public class MacType
    {
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="type_id" ,IsPrimaryKey = true ,IsIdentity = true  )]
         public string TypeId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_name"    )]
         public string TypeName { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_en"    )]
         public string TypeEn { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="type_sort"    )]
         public string TypeSort { get; set; }
        /// <summary>
        ///  
        /// 默认值: 1
        ///</summary>
         [SugarColumn(ColumnName="type_mid"    )]
         public string TypeMid { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="type_pid"    )]
         public string TypePid { get; set; }
        /// <summary>
        ///  
        /// 默认值: 1
        ///</summary>
         [SugarColumn(ColumnName="type_status"    )]
         public string TypeStatus { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_tpl"    )]
         public string TypeTpl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_tpl_list"    )]
         public string TypeTplList { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_tpl_detail"    )]
         public string TypeTplDetail { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_tpl_play"    )]
         public string TypeTplPlay { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_tpl_down"    )]
         public string TypeTplDown { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_key"    )]
         public string TypeKey { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_des"    )]
         public string TypeDes { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_title"    )]
         public string TypeTitle { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_union"    )]
         public string TypeUnion { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="type_extend"    )]
         public string TypeExtend { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_logo"    )]
         public string TypeLogo { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_pic"    )]
         public string TypePic { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="type_jumpurl"    )]
         public string TypeJumpurl { get; set; }
    }
}
