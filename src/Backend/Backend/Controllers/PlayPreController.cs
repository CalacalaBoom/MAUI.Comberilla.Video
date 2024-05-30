using Backend.Comon;
using Backend.Core;
using Backend.Core.Models;
using Microsoft.AspNetCore.Mvc;

namespace Backend.Controllers
{
    /// <summary>
    /// M3u8解析前缀控制器
    /// </summary>
    [ApiController]
    [Route("[controller]/[action]")]
    public class PlayPreController
    {
        private Repository<Playpre> _repository;

        public PlayPreController(Repository<Playpre> repository)
        {
            _repository = repository;
        }

        /// <summary>
        /// 获取M3u8解析前缀
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        [HttpGet]
        public async Task<RESTFulDto<string>> GetM3u8Pre(string playfrom)
        {
            try
            {
                var model =_repository.GetById(playfrom);
                return new RESTFulDto<string>(model.M3u8);
            }
            catch (Exception ex)
            {
                return new RESTFulDto<string>(null, false, 500, ex.Message, ex.ToString());
            }
        }
    }


}
