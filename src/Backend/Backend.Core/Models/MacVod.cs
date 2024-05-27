using System;
using System.Collections.Generic;
using System.Linq;
using SqlSugar;
namespace Backend.Core.Models
{
    /// <summary>
    /// 
    ///</summary>
    [SugarTable("mac_vod")]
    public class MacVod
    {
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="vod_id" ,IsPrimaryKey = true ,IsIdentity = true  )]
         public int VodId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="type_id"    )]
         public short TypeId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="type_id_1"    )]
         public string TypeId1 { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="group_id"    )]
         public string GroupId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_name"    )]
         public string VodName { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_sub"    )]
         public string VodSub { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_en"    )]
         public string VodEn { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_status"    )]
         public string VodStatus { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_letter"    )]
         public string VodLetter { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_color"    )]
         public string VodColor { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_tag"    )]
         public string VodTag { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_class"    )]
         public string VodClass { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pic"    )]
         public string VodPic { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pic_thumb"    )]
         public string VodPicThumb { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pic_slide"    )]
         public string VodPicSlide { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="vod_pic_screenshot"    )]
         public string VodPicScreenshot { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_actor"    )]
         public string VodActor { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_director"    )]
         public string VodDirector { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_writer"    )]
         public string VodWriter { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_behind"    )]
         public string VodBehind { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_blurb"    )]
         public string VodBlurb { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_remarks"    )]
         public string VodRemarks { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pubdate"    )]
         public string VodPubdate { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_total"    )]
         public string VodTotal { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_serial"    )]
         public string VodSerial { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_tv"    )]
         public string VodTv { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_weekday"    )]
         public string VodWeekday { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_area"    )]
         public string VodArea { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_lang"    )]
         public string VodLang { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_year"    )]
         public string VodYear { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_version"    )]
         public string VodVersion { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_state"    )]
         public string VodState { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_author"    )]
         public string VodAuthor { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_jumpurl"    )]
         public string VodJumpurl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_tpl"    )]
         public string VodTpl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_tpl_play"    )]
         public string VodTplPlay { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_tpl_down"    )]
         public string VodTplDown { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_isend"    )]
         public string VodIsend { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_lock"    )]
         public string VodLock { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_level"    )]
         public string VodLevel { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_copyright"    )]
         public string VodCopyright { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_points"    )]
         public string VodPoints { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_points_play"    )]
         public string VodPointsPlay { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_points_down"    )]
         public string VodPointsDown { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_hits"    )]
         public string VodHits { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_hits_day"    )]
         public string VodHitsDay { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_hits_week"    )]
         public string VodHitsWeek { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_hits_month"    )]
         public string VodHitsMonth { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_duration"    )]
         public string VodDuration { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_up"    )]
         public string VodUp { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_down"    )]
         public string VodDown { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0.0
        ///</summary>
         [SugarColumn(ColumnName="vod_score"    )]
         public decimal VodScore { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_score_all"    )]
         public string VodScoreAll { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_score_num"    )]
         public string VodScoreNum { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_time"    )]
         public int VodTime { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_time_add"    )]
         public int VodTimeAdd { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_time_hits"    )]
         public int VodTimeHits { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_time_make"    )]
         public int VodTimeMake { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_trysee"    )]
         public string VodTrysee { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_douban_id"    )]
         public int VodDoubanId { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0.0
        ///</summary>
         [SugarColumn(ColumnName="vod_douban_score"    )]
         public decimal VodDoubanScore { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_reurl"    )]
         public string VodReurl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_rel_vod"    )]
         public string VodRelVod { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_rel_art"    )]
         public string VodRelArt { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pwd"    )]
         public string VodPwd { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pwd_url"    )]
         public string VodPwdUrl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pwd_play"    )]
         public string VodPwdPlay { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pwd_play_url"    )]
         public string VodPwdPlayUrl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pwd_down"    )]
         public string VodPwdDown { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_pwd_down_url"    )]
         public string VodPwdDownUrl { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="vod_content"    )]
         public string VodContent { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_play_from"    )]
         public string VodPlayFrom { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_play_server"    )]
         public string VodPlayServer { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_play_note"    )]
         public string VodPlayNote { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="vod_play_url"    )]
         public string VodPlayUrl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_down_from"    )]
         public string VodDownFrom { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_down_server"    )]
         public string VodDownServer { get; set; }
        /// <summary>
        ///  
        /// 默认值: 
        ///</summary>
         [SugarColumn(ColumnName="vod_down_note"    )]
         public string VodDownNote { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="vod_down_url"    )]
         public string VodDownUrl { get; set; }
        /// <summary>
        ///  
        /// 默认值: 0
        ///</summary>
         [SugarColumn(ColumnName="vod_plot"    )]
         public string VodPlot { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="vod_plot_name"    )]
         public string VodPlotName { get; set; }
        /// <summary>
        ///  
        ///</summary>
         [SugarColumn(ColumnName="vod_plot_detail"    )]
         public string VodPlotDetail { get; set; }
    }
}
