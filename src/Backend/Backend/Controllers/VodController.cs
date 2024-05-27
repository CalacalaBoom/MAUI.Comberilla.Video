using Backend.Core.Models;
using Backend.Core;
using Microsoft.AspNetCore.Mvc;
using SqlSugar;
using Backend.Comon;
using System.Drawing.Printing;

namespace Backend.Controllers
{
    /// <summary>
    /// 视频控制器
    /// </summary>
    [ApiController]
    [Route("[controller]/[action]")]
    public class VodController : ControllerBase
    {
        private ISqlSugarClient _db;
        private Repository<MacVod> _repository;
        private IConfiguration _configuration;

        public VodController(ISqlSugarClient db, Repository<MacVod> repository, IConfiguration configuration)
        {
            _db = db;
            _repository = repository;
            _configuration = configuration;
        }

        /// <summary>
        /// 获取推荐视频
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        [HttpGet]
        public async Task<RESTFulDto<List<MacVod>>> GetRecommendVideo(string type)
        {
            try
            {
                var topic = await _db.Queryable<MacTopic>().Where(w => w.TopicName.Contains(type)).FirstAsync();
                if (topic != null)
                {
                    var vod_ids = topic.TopicRelVod.Split(",");
                    // 将vod_ids转换为整数列表
                    var vodIdList = vod_ids.Select(v => int.Parse(v)).ToList();

                    // 使用批量查询来获取所有匹配的MacVod
                    var result = await _repository.GetListAsync(g => vodIdList.Contains(g.VodId));

                    // 如果需要将结果转为List<MacVod>
                    var resultList = result.ToList();

                    return new RESTFulDto<List<MacVod>>(resultList);
                }
                else
                {
                    return new RESTFulDto<List<MacVod>>(null, false, 201, "没有推荐视频");
                }
            }
            catch (Exception ex)
            {
                return new RESTFulDto<List<MacVod>>(null, false, 500, ex.Message, ex.ToString());
            }
        }

        /// <summary>
        /// 获取最新视频
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        [HttpGet]
        public async Task<RESTFulDto<List<MacVod>>> GetLatestVideo(string type, int pagenumber, int pageSize)
        {
            try
            {
                var type_id = type == "normal" ? _configuration["NormalTypeId"] : _configuration["HTypeId"];
                RefAsync<int> total = 0;//REF和OUT不支持异步,想要真的异步这是最优解
                var result = await _repository.AsQueryable()
                    .OrderByDescending(x => x.VodTime)
                    .Where(w => w.TypeId1 == type_id).ToPageListAsync(pagenumber, pageSize, total);
                return new RESTFulDto<List<MacVod>>(result, true, 200, total.ToString());
            }
            catch (Exception ex)
            {
                return new RESTFulDto<List<MacVod>>(null, false, 500, ex.Message, ex.ToString());
            }
        }

        /// <summary>
        /// 视频搜索
        /// </summary>
        /// <param name="type"></param>
        /// <param name="query">片名，演员，导演</param>
        /// <returns></returns>
        [HttpGet]
        public async Task<RESTFulDto<List<MacVod>>> SearchVideo(string type, string query, int pagenumber, int pageSize)
        {
            try
            {
                var type_id = type == "normal" ? _configuration["NormalTypeId"] : _configuration["HTypeId"];
                RefAsync<int> total = 0;//REF和OUT不支持异步,想要真的异步这是最优解
                var result = await _repository.AsQueryable()
                    .Where(w => w.TypeId1 == type_id && (w.VodName.Contains(query) || w.VodActor.Contains(query) || w.VodDirector.Contains(query)))
                    .ToPageListAsync(pagenumber, pageSize, total);
                return new RESTFulDto<List<MacVod>>(result, true, 200, total.ToString());
            }
            catch (Exception ex)
            {
                return new RESTFulDto<List<MacVod>>(null, false, 500, ex.Message, ex.ToString());
            }
        }

        /// <summary>
        /// 获取类型下的视频
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        [HttpGet]
        public async Task<RESTFulDto<List<MacVod>>> GetTypeVideo(int typeid,int pagenumber, int pageSize)
        {
            try
            {
                RefAsync<int> total = 0;//REF和OUT不支持异步,想要真的异步这是最优解
                var result = await _repository.AsQueryable()
                    .OrderByDescending(x => x.VodTime)
                    .Where(w => w.TypeId == typeid).ToPageListAsync(pagenumber, pageSize, total);
                return new RESTFulDto<List<MacVod>>(result, true, 200, total.ToString());
            }
            catch (Exception ex)
            {
                return new RESTFulDto<List<MacVod>>(null, false, 500, ex.Message, ex.ToString());
            }
        }
    }
}
