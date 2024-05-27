using System;
using System.Collections.Generic;
using System.Linq;
using SqlSugar;
namespace Backend.Core.Models
{
    /// <summary>
    /// 
    ///</summary>
    [SugarTable("mac_annex")]
    public class MacAnnex
    {
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="annex_id" ,IsPrimaryKey = true ,IsIdentity = true  )]
         public int AnnexId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="annex_time"    )]
         public int AnnexTime { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="annex_file"    )]
         public string AnnexFile { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="annex_size"    )]
         public int AnnexSize { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="annex_type"    )]
         public string AnnexType { get; set; }
    }
}
