using System;
using System.Collections.Generic;
using System.Linq;
using SqlSugar;
namespace Backend.Core.Models
{
    /// <summary>
    /// 
    ///</summary>
    [SugarTable("playpre")]
    public class Playpre
    {
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="playfrom" ,IsPrimaryKey = true   )]
         public string Playfrom { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="m3u8"    )]
         public string M3u8 { get; set; }
    }
}
