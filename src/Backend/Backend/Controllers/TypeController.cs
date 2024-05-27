using Backend.Core.Models;
using Backend.Core;
using Microsoft.AspNetCore.Mvc;
using Backend.Comon;
using System.Configuration;

namespace Backend.Controllers
{
    /// <summary>
    /// 视频类型控制器
    /// </summary>
    [ApiController]
    [Route("[controller]/[action]")]
    public class TypeController
    {
        private Repository<MacType> _repository;
        private IConfiguration _configuration;
        public TypeController(Repository<MacType> repository, IConfiguration configuration)
        {
            _repository = repository;
            _configuration = configuration;
        }

        /// <summary>
        /// 获取类型列表
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        [HttpGet]
        public async Task<RESTFulDto<List<MacType>>> GetTypeList(string type)
        {
            try
            {
                var type_id = type == "normal" ? _configuration["NormalTypeId"] : _configuration["HTypeId"];

                var result =await _repository.GetListAsync(g => g.TypePid == type_id);

                return new RESTFulDto<List<MacType>>(result);
            }
            catch (Exception ex)
            {
                return new RESTFulDto<List<MacType>>(null, false, 500, ex.Message, ex.ToString());
            }
        }

    }
}
