using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Configuration;
namespace CustomerWebApplication
{
    public static class GlobalVaribles
    {

        public static HttpClient WebApiClient = new HttpClient();

        static GlobalVaribles() {

            string webApiURl = ConfigurationManager.AppSettings["WebApiURL"].ToString();
            WebApiClient.BaseAddress = new Uri(webApiURl);
           
            WebApiClient.DefaultRequestHeaders.Clear();
            WebApiClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }
    }
}