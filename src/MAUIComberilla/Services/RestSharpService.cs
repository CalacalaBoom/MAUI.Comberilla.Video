using Newtonsoft.Json;
using Polly;
using RestSharp;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace MAUIComberilla.Services
{
    

    public class RestSharpService
    {
        private readonly RestClient _client;
        private int _maxRetryAttempts = 3;//重试次数
        private double _pauseBetweenFailuresSecond = 1;  //失败后的暂停多久重试 单位s
        public RestSharpService()
        {
            var options = new RestClientOptions("http://123.60.48.68:8081/")
            {
                ThrowOnAnyError = true,
                Timeout=TimeSpan.FromSeconds(2)
            };
            _client = new RestClient(options);

        }

        public async Task<string?> ExecuteAsync(BaseRequest baseRequest)
        {

            var request = new RestRequest(baseRequest.Api, baseRequest.Method);
            request.AddHeader("Authorization", "Basic eXZvbmU6MTIxODA0NTAwMjM5");
            try
            {

                if (baseRequest.Method == Method.Get)
                {
                    //  request.AddHeader("Content-Type", baseRequest.ContentType);
                    if (baseRequest.Parameter != null)
                    {
                        foreach (var item in baseRequest.Parameter.GetType().GetProperties())
                        {
                            if (item.GetValue(baseRequest.Parameter, null) != null)
                                request.AddQueryParameter(item.Name, item.GetValue(baseRequest.Parameter, null).ToString());
                        }
                        // request.AddParameter("application/json", param, ParameterType.RequestBody);
                    }

                }
                else if (baseRequest.Method == Method.Post)
                {
                    var param = JsonConvert.SerializeObject(baseRequest.Parameter);

                    request.AddJsonBody(param);
                }
                else if (baseRequest.Method == Method.Put)
                {
                    var param = JsonConvert.SerializeObject(baseRequest.Parameter);

                    request.AddJsonBody(param);
                }
                else if (baseRequest.Method == Method.Delete)
                {
                    
                }

                var response = await RestResponseWithPolicyAsync(request);

                if (response.StatusCode == HttpStatusCode.OK)
                {
                    return response.Content;
                }
                else
                {
                    return "";
                }

                //if (response.ErrorException != null)
                //{
                //    return response.ErrorException.Message;
                //}

                //return response.ErrorMessage;
            }
            catch (TimeoutException ex)
            {
               
                return "";

            }
        }

        /// <summary>
        /// 使用Policy执行http请求
        /// </summary>
        /// <param name="restRequest"></param>
        /// <returns></returns>
        private Task<RestResponse> RestResponseWithPolicyAsync(RestRequest restRequest)
        {
            var retryPolicy = Policy
                .HandleResult<RestResponse>(x => !x.IsSuccessful)
                .Or<TimeoutException>()
                .WaitAndRetryAsync(_maxRetryAttempts, x => TimeSpan.FromSeconds(_pauseBetweenFailuresSecond), (restResponse, timeSpan, retryCount, context) =>
                {
                    //Console.WriteLine($"The request failed.  Waiting {timeSpan.TotalSeconds} seconds before retry. Number attempt {retryCount}." );

                });

            return retryPolicy.ExecuteAsync(() => _client.ExecuteAsync(restRequest));
        }

        public async Task<TResponse?> GetAsync<TResponse>(string api, object query = null) where TResponse : class
        {
            var text = await ExecuteAsync(new BaseRequest()
            {
                Api = api,
                Parameter = query,
                Method = Method.Get,
            });
            if (!string.IsNullOrEmpty(text))
            {
                return ToJsonModel<TResponse>(text);
            }
            else
            {
                return null;
            }
            // return (typeof(TResponse) == typeof(string)) ? ((text as TResponse)) : (ToJsonModel<TResponse>(text));
        }

        public async Task<TResponse?> PostAsync<TResponse>(string api, object param) where TResponse : class
        {
            var text = await ExecuteAsync(new BaseRequest()
            {
                Api = api,
                Method = Method.Post,
                Parameter = param
            });
            if (!string.IsNullOrEmpty(text))
            {
                return ToJsonModel<TResponse>(text);
            }
            else
            {
                return null;
            }

            // return (typeof(TResponse) == typeof(string)) ? ((text as TResponse)) : (ToJsonModel<TResponse>(text));
        }

        public async Task<TResponse?> PutAsync<TResponse>(string api, object param) where TResponse : class
        {
            var text = await ExecuteAsync(new BaseRequest()
            {
                Api = api,
                Method = Method.Put,
                Parameter = param
            });
            if (!string.IsNullOrEmpty(text))
            {
                return ToJsonModel<TResponse>(text);
            }
            else
            {
                return null;
            }

            // return (typeof(TResponse) == typeof(string)) ? ((text as TResponse)) : (ToJsonModel<TResponse>(text));
        }

        public async Task<TResponse?> DeleteAsync<TResponse>(string api, object query = null) where TResponse : class
        {
            var text = await ExecuteAsync(new BaseRequest()
            {
                Api = api,
                Parameter = query,
                Method = Method.Delete,
            });
            if (!string.IsNullOrEmpty(text))
            {
                return ToJsonModel<TResponse>(text);
            }
            else
            {
                return null;
            }
            // return (typeof(TResponse) == typeof(string)) ? ((text as TResponse)) : (ToJsonModel<TResponse>(text));
        }

        public T? ToJsonModel<T>(string json)
        {
            if (string.IsNullOrWhiteSpace(json))
            {
                return default(T);
            }

            //JsonSerializerOptions jsonSerializerOptions = new JsonSerializerOptions
            //{
            //    PropertyNameCaseInsensitive = true
            //};
            //   jsonSerializerOptions.Converters.Add(new DateTimeConverterUsingDateTimeParse());
            return JsonConvert.DeserializeObject<T>(json);
        }
    }
    public class BaseRequest
    {
        public Method Method { get; set; }
        public string Api { get; set; }
        public string ContentType { get; set; } = "application/json";
        public object? Parameter { get; set; }

    }

}
