using System;
using System.Collections.Generic;
using System.Linq;
using SqlSugar;
namespace Backend.Core.Models
{
    /// <summary>
    /// 
    ///</summary>
    [SugarTable("mac_topic")]
    public class MacTopic
    {
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="topic_id" ,IsPrimaryKey = true ,IsIdentity = true  )]
         public string TopicId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_name"    )]
         public string TopicName { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_en"    )]
         public string TopicEn { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_sub"    )]
         public string TopicSub { get; set; }
        /// <summary>
        ///  
        /// 默认值: 1
        ///</summary>
         [SugarColumn(ColumnName="topic_status"    )]
         public string TopicStatus { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_sort"    )]
         public string TopicSort { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_letter"    )]
         public string TopicLetter { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_color"    )]
         public string TopicColor { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_tpl"    )]
         public string TopicTpl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_type"    )]
         public string TopicType { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_pic"    )]
         public string TopicPic { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_pic_thumb"    )]
         public string TopicPicThumb { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_pic_slide"    )]
         public string TopicPicSlide { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_key"    )]
         public string TopicKey { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_des"    )]
         public string TopicDes { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_title"    )]
         public string TopicTitle { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_blurb"    )]
         public string TopicBlurb { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_remarks"    )]
         public string TopicRemarks { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_level"    )]
         public string TopicLevel { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_up"    )]
         public string TopicUp { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_down"    )]
         public string TopicDown { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0.0
        ///</summary>
         [SugarColumn(ColumnName="topic_score"    )]
         public decimal TopicScore { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_score_all"    )]
         public string TopicScoreAll { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_score_num"    )]
         public string TopicScoreNum { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_hits"    )]
         public string TopicHits { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_hits_day"    )]
         public string TopicHitsDay { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_hits_week"    )]
         public string TopicHitsWeek { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_hits_month"    )]
         public string TopicHitsMonth { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_time"    )]
         public int TopicTime { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_time_add"    )]
         public int TopicTimeAdd { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_time_hits"    )]
         public int TopicTimeHits { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="topic_time_make"    )]
         public int TopicTimeMake { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="topic_tag"    )]
         public string TopicTag { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="topic_rel_vod"    )]
         public string TopicRelVod { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="topic_rel_art"    )]
         public string TopicRelArt { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="topic_content"    )]
         public string TopicContent { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="topic_extend"    )]
         public string TopicExtend { get; set; }
    }
}
